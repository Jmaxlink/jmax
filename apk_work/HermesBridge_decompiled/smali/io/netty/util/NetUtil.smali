.class public final Lio/netty/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/NetUtil$SoMaxConnAction;
    }
.end annotation


# static fields
.field private static final IPV4_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x3

.field private static final IPV4_PREFERRED:Z

.field private static final IPV4_SEPARATORS:I = 0x3

.field private static final IPV6_ADDRESSES_PREFERRED:Z

.field private static final IPV6_BYTE_COUNT:I = 0x10

.field private static final IPV6_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x4

.field private static final IPV6_MAX_CHAR_COUNT:I = 0x27

.field private static final IPV6_MAX_SEPARATORS:I = 0x8

.field private static final IPV6_MIN_SEPARATORS:I = 0x2

.field private static final IPV6_WORD_COUNT:I = 0x8

.field public static final LOCALHOST:Ljava/net/InetAddress;

.field public static final LOCALHOST4:Ljava/net/Inet4Address;

.field public static final LOCALHOST6:Ljava/net/Inet6Address;

.field public static final LOOPBACK_IF:Ljava/net/NetworkInterface;

.field public static final NETWORK_INTERFACES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOMAXCONN:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 128
    const-string v0, "java.net.preferIPv4Stack"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    .line 138
    const-class v0, Lio/netty/util/NetUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 141
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v2, "false"

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "prefer":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v1, 0x1

    sput-boolean v1, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    goto :goto_0

    .line 146
    :cond_0
    sput-boolean v1, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    .line 148
    :goto_0
    sget-object v1, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v2, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Djava.net.preferIPv4Stack: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    sget-object v1, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Djava.net.preferIPv6Addresses: {}"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lio/netty/util/NetUtilInitializations;->networkInterfaces()Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lio/netty/util/NetUtil;->NETWORK_INTERFACES:Ljava/util/Collection;

    .line 154
    invoke-static {}, Lio/netty/util/NetUtilInitializations;->createLocalhost4()Ljava/net/Inet4Address;

    move-result-object v1

    sput-object v1, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    .line 157
    invoke-static {}, Lio/netty/util/NetUtilInitializations;->createLocalhost6()Ljava/net/Inet6Address;

    move-result-object v1

    sput-object v1, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    .line 159
    sget-object v1, Lio/netty/util/NetUtil;->NETWORK_INTERFACES:Ljava/util/Collection;

    sget-object v2, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    sget-object v3, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    .line 160
    invoke-static {v1, v2, v3}, Lio/netty/util/NetUtilInitializations;->determineLoopback(Ljava/util/Collection;Ljava/net/Inet4Address;Ljava/net/Inet6Address;)Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;

    move-result-object v1

    .line 161
    .local v1, "loopback":Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;
    invoke-virtual {v1}, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->iface()Ljava/net/NetworkInterface;

    move-result-object v2

    sput-object v2, Lio/netty/util/NetUtil;->LOOPBACK_IF:Ljava/net/NetworkInterface;

    .line 162
    invoke-virtual {v1}, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->address()Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, Lio/netty/util/NetUtil;->LOCALHOST:Ljava/net/InetAddress;

    .line 167
    new-instance v2, Lio/netty/util/NetUtil$SoMaxConnAction;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/netty/util/NetUtil$SoMaxConnAction;-><init>(Lio/netty/util/NetUtil$1;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lio/netty/util/NetUtil;->SOMAXCONN:I

    .line 168
    .end local v0    # "prefer":Ljava/lang/String;
    .end local v1    # "loopback":Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    return-void
.end method

.method static synthetic access$100()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 51
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lio/netty/util/NetUtil;->sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToIpAddress([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 423
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->bytesToIpAddress([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToIpAddress([BII)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 433
    sparse-switch p2, :sswitch_data_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 4 or 16)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createByteArrayFromIpAddressString(Ljava/lang/String;)[B
    .locals 4
    .param p0, "ipAddressString"    # Ljava/lang/String;

    .line 288
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lio/netty/util/NetUtil;->validIpV4ToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 297
    :cond_1
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 298
    .local v1, "percentPos":I
    if-ltz v1, :cond_2

    .line 299
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 302
    :cond_2
    invoke-static {p0, v3}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object v0

    return-object v0

    .line 304
    .end local v1    # "percentPos":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createInetAddressFromIpAddressString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "ipAddressString"    # Ljava/lang/String;

    .line 312
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {p0}, Lio/netty/util/NetUtil;->validIpV4ToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 315
    .local v0, "bytes":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 316
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 322
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 327
    :cond_1
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 328
    .local v2, "percentPos":I
    if-ltz v2, :cond_3

    .line 330
    add-int/lit8 v3, v2, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 331
    .local v3, "scopeId":I
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 332
    invoke-static {p0, v4}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 333
    .restart local v0    # "bytes":[B
    if-nez v0, :cond_2

    .line 334
    return-object v1

    .line 337
    :cond_2
    :try_start_2
    invoke-static {v1, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 338
    :catch_1
    move-exception v4

    .line 340
    .local v4, "e":Ljava/net/UnknownHostException;
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "percentPos":I
    .end local p0    # "ipAddressString":Ljava/lang/String;
    throw v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 342
    .end local v0    # "bytes":[B
    .end local v3    # "scopeId":I
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "percentPos":I
    .restart local p0    # "ipAddressString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 346
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-static {p0, v4}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object v0

    .line 347
    .local v0, "bytes":[B
    if-nez v0, :cond_4

    .line 348
    return-object v1

    .line 351
    :cond_4
    :try_start_4
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v1

    .line 352
    :catch_3
    move-exception v1

    .line 354
    .restart local v1    # "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 357
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "percentPos":I
    :cond_5
    return-object v1
.end method

.method private static decimalDigit(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method public static getByName(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;
    .locals 1
    .param p0, "ip"    # Ljava/lang/CharSequence;

    .line 683
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;
    .locals 3
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "ipv4Mapped"    # Z

    .line 701
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object v0

    .line 702
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 703
    return-object v1

    .line 706
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v0, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 1082
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getIPv6ByName(Ljava/lang/CharSequence;Z)[B
    .locals 21
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "ipv4Mapped"    # Z

    .line 728
    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 729
    .local v1, "bytes":[B
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 730
    .local v2, "ipLength":I
    const/4 v3, 0x0

    .line 731
    .local v3, "compressBegin":I
    const/4 v4, 0x0

    .line 732
    .local v4, "compressLength":I
    const/4 v5, 0x0

    .line 733
    .local v5, "currentIndex":I
    const/4 v6, 0x0

    .line 734
    .local v6, "value":I
    const/4 v7, -0x1

    .line 735
    .local v7, "begin":I
    const/4 v8, 0x0

    .line 736
    .local v8, "i":I
    const/4 v9, 0x0

    .line 737
    .local v9, "ipv6Separators":I
    const/4 v10, 0x0

    .line 739
    .local v10, "ipv4Separators":I
    :goto_0
    const/16 v14, 0x8

    const/16 v15, 0x3a

    const/16 v16, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x4

    if-ge v8, v2, :cond_11

    .line 740
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    .line 741
    .local v18, "c":C
    sparse-switch v18, :sswitch_data_0

    .line 809
    invoke-static/range {v18 .. v18}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v13

    if-eqz v13, :cond_10

    if-lez v10, :cond_d

    invoke-static/range {v18 .. v18}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-nez v13, :cond_d

    goto/16 :goto_7

    .line 743
    :sswitch_0
    add-int/lit8 v9, v9, 0x1

    .line 744
    sub-int v13, v8, v7

    if-gt v13, v12, :cond_5

    if-gtz v10, :cond_5

    if-gt v9, v14, :cond_5

    add-int/lit8 v13, v5, 0x1

    array-length v14, v1

    if-lt v13, v14, :cond_0

    goto :goto_3

    .line 749
    :cond_0
    sub-int v13, v8, v7

    rsub-int/lit8 v13, v13, 0x4

    shl-int/2addr v13, v11

    shl-int/2addr v6, v13

    .line 751
    if-lez v4, :cond_1

    .line 752
    add-int/lit8 v4, v4, -0x2

    .line 758
    :cond_1
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "currentIndex":I
    .local v13, "currentIndex":I
    and-int/lit8 v14, v6, 0xf

    shl-int/2addr v14, v12

    shr-int/lit8 v17, v6, 0x4

    and-int/lit8 v17, v17, 0xf

    or-int v14, v14, v17

    int-to-byte v14, v14

    aput-byte v14, v1, v5

    .line 759
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "currentIndex":I
    .restart local v5    # "currentIndex":I
    shr-int/lit8 v14, v6, 0x8

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v12, v14, 0x4

    shr-int/lit8 v14, v6, 0xc

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v13

    .line 760
    add-int/lit8 v12, v8, 0x1

    .line 761
    .local v12, "tmp":I
    if-ge v12, v2, :cond_4

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v15, :cond_4

    .line 762
    add-int/lit8 v12, v12, 0x1

    .line 763
    if-nez v3, :cond_3

    if-ge v12, v2, :cond_2

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v15, :cond_2

    goto :goto_1

    .line 766
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 767
    move v3, v5

    .line 768
    array-length v13, v1

    sub-int/2addr v13, v3

    add-int/lit8 v4, v13, -0x2

    .line 769
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 764
    :cond_3
    :goto_1
    return-object v16

    .line 771
    :cond_4
    :goto_2
    const/4 v6, 0x0

    .line 772
    const/4 v7, -0x1

    .line 773
    goto/16 :goto_6

    .line 747
    .end local v12    # "tmp":I
    :cond_5
    :goto_3
    return-object v16

    .line 775
    :sswitch_1
    add-int/lit8 v10, v10, 0x1

    .line 776
    sub-int v12, v8, v7

    .line 777
    .restart local v12    # "tmp":I
    const/4 v13, 0x3

    if-gt v12, v13, :cond_c

    if-ltz v7, :cond_c

    if-gt v10, v13, :cond_c

    if-lez v9, :cond_6

    add-int v13, v5, v4

    const/16 v14, 0xc

    if-lt v13, v14, :cond_c

    :cond_6
    add-int/lit8 v13, v8, 0x1

    if-ge v13, v2, :cond_c

    array-length v13, v1

    if-ge v5, v13, :cond_c

    const/4 v13, 0x1

    if-ne v10, v13, :cond_a

    if-eqz p1, :cond_c

    if-eqz v5, :cond_7

    .line 785
    invoke-static {v1, v5, v3, v4}, Lio/netty/util/NetUtil;->isValidIPv4Mapped([BIII)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_7
    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    add-int/lit8 v13, v8, -0x1

    .line 787
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_c

    add-int/lit8 v13, v8, -0x2

    .line 788
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_c

    add-int/lit8 v13, v8, -0x3

    .line 789
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_8
    if-ne v12, v11, :cond_9

    add-int/lit8 v13, v8, -0x1

    .line 790
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_c

    add-int/lit8 v13, v8, -0x2

    .line 791
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_9
    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    add-int/lit8 v13, v8, -0x1

    .line 792
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_4

    .line 795
    :cond_a
    rsub-int/lit8 v13, v12, 0x3

    shl-int/lit8 v11, v13, 0x2

    shl-int/2addr v6, v11

    .line 800
    and-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x64

    shr-int/lit8 v13, v6, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0xa

    mul-int/2addr v13, v14

    add-int/2addr v11, v13

    shr-int/lit8 v13, v6, 0x8

    and-int/lit8 v13, v13, 0xf

    add-int/2addr v11, v13

    .line 801
    .end local v7    # "begin":I
    .local v11, "begin":I
    const/16 v7, 0xff

    if-le v11, v7, :cond_b

    .line 802
    return-object v16

    .line 804
    :cond_b
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "currentIndex":I
    .local v7, "currentIndex":I
    int-to-byte v13, v11

    aput-byte v13, v1, v5

    .line 805
    const/4 v5, 0x0

    .line 806
    .end local v6    # "value":I
    .local v5, "value":I
    const/4 v6, -0x1

    .line 807
    .end local v11    # "begin":I
    .local v6, "begin":I
    move/from16 v20, v6

    move v6, v5

    move v5, v7

    move/from16 v7, v20

    goto :goto_6

    .line 793
    .local v5, "currentIndex":I
    .local v6, "value":I
    .local v7, "begin":I
    :cond_c
    :goto_4
    return-object v16

    .line 812
    .end local v12    # "tmp":I
    :cond_d
    if-gez v7, :cond_e

    .line 813
    move v7, v8

    goto :goto_5

    .line 814
    :cond_e
    sub-int v13, v8, v7

    if-le v13, v12, :cond_f

    .line 815
    return-object v16

    .line 821
    :cond_f
    :goto_5
    invoke-static/range {v18 .. v18}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v12

    sub-int v13, v8, v7

    shl-int/lit8 v11, v13, 0x2

    shl-int v11, v12, v11

    add-int/2addr v6, v11

    .line 739
    .end local v18    # "c":C
    :goto_6
    const/4 v13, 0x1

    add-int/2addr v8, v13

    goto/16 :goto_0

    .line 810
    .restart local v18    # "c":C
    :cond_10
    :goto_7
    return-object v16

    .line 826
    .end local v18    # "c":C
    :cond_11
    const/4 v13, 0x1

    const/4 v13, 0x0

    if-lez v3, :cond_12

    const/16 v19, 0x1

    goto :goto_8

    :cond_12
    move/from16 v19, v13

    :goto_8
    move/from16 v18, v19

    .line 828
    .local v18, "isCompressed":Z
    if-lez v10, :cond_1a

    .line 829
    if-lez v7, :cond_13

    sub-int v12, v8, v7

    const/4 v14, 0x3

    if-gt v12, v14, :cond_19

    goto :goto_9

    :cond_13
    const/4 v14, 0x3

    :goto_9
    if-ne v10, v14, :cond_19

    array-length v12, v1

    if-lt v5, v12, :cond_14

    goto :goto_a

    .line 834
    :cond_14
    if-eqz v9, :cond_17

    if-lt v9, v11, :cond_16

    if-nez v18, :cond_15

    const/4 v12, 0x6

    if-ne v9, v12, :cond_15

    .line 835
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v15, :cond_17

    :cond_15
    if-eqz v18, :cond_16

    const/16 v12, 0x8

    if-ge v9, v12, :cond_16

    .line 837
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v15, :cond_17

    if-le v3, v11, :cond_17

    .line 838
    :cond_16
    return-object v16

    .line 840
    :cond_17
    sub-int v12, v8, v7

    const/4 v14, 0x3

    rsub-int/lit8 v12, v12, 0x3

    shl-int/lit8 v11, v12, 0x2

    shl-int/2addr v6, v11

    .line 845
    and-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x64

    shr-int/lit8 v12, v6, 0x4

    and-int/lit8 v12, v12, 0xf

    const/16 v14, 0xa

    mul-int/2addr v12, v14

    add-int/2addr v11, v12

    shr-int/lit8 v12, v6, 0x8

    and-int/lit8 v12, v12, 0xf

    add-int v7, v11, v12

    .line 846
    const/16 v11, 0xff

    if-le v7, v11, :cond_18

    .line 847
    return-object v16

    .line 849
    :cond_18
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "currentIndex":I
    .local v11, "currentIndex":I
    int-to-byte v12, v7

    aput-byte v12, v1, v5

    goto/16 :goto_b

    .line 832
    .end local v11    # "currentIndex":I
    .restart local v5    # "currentIndex":I
    :cond_19
    :goto_a
    return-object v16

    .line 851
    :cond_1a
    add-int/lit8 v14, v2, -0x1

    .line 852
    .local v14, "tmp":I
    if-lez v7, :cond_1b

    sub-int v15, v8, v7

    if-gt v15, v12, :cond_24

    :cond_1b
    if-lt v9, v11, :cond_24

    if-nez v18, :cond_1c

    add-int/lit8 v15, v9, 0x1

    const/16 v12, 0x8

    if-ne v15, v12, :cond_24

    .line 855
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v15, 0x3a

    if-eq v12, v15, :cond_24

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v15, :cond_24

    :cond_1c
    if-eqz v18, :cond_1e

    const/16 v12, 0x8

    if-gt v9, v12, :cond_24

    if-ne v9, v12, :cond_1e

    if-gt v3, v11, :cond_1d

    .line 858
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v15, 0x3a

    if-ne v12, v15, :cond_24

    :cond_1d
    const/16 v12, 0xe

    if-lt v3, v12, :cond_1e

    .line 859
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v15, 0x3a

    if-ne v12, v15, :cond_24

    :cond_1e
    add-int/lit8 v12, v5, 0x1

    array-length v15, v1

    if-ge v12, v15, :cond_24

    if-gez v7, :cond_1f

    add-int/lit8 v12, v14, -0x1

    .line 861
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v15, 0x3a

    if-ne v12, v15, :cond_24

    :cond_1f
    if-le v3, v11, :cond_20

    .line 862
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v15, 0x3a

    if-ne v12, v15, :cond_20

    goto :goto_c

    .line 865
    :cond_20
    if-ltz v7, :cond_21

    sub-int v12, v8, v7

    const/4 v15, 0x4

    if-gt v12, v15, :cond_21

    .line 866
    sub-int v12, v8, v7

    rsub-int/lit8 v12, v12, 0x4

    shl-int/lit8 v11, v12, 0x2

    shl-int/2addr v6, v11

    .line 871
    :cond_21
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "currentIndex":I
    .restart local v11    # "currentIndex":I
    and-int/lit8 v12, v6, 0xf

    const/4 v15, 0x4

    shl-int/2addr v12, v15

    shr-int/lit8 v15, v6, 0x4

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v1, v5

    .line 872
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "currentIndex":I
    .restart local v5    # "currentIndex":I
    shr-int/lit8 v12, v6, 0x8

    and-int/lit8 v12, v12, 0xf

    const/4 v15, 0x4

    shl-int/2addr v12, v15

    shr-int/lit8 v15, v6, 0xc

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    move v11, v5

    .line 875
    .end local v5    # "currentIndex":I
    .end local v14    # "tmp":I
    .restart local v11    # "currentIndex":I
    :goto_b
    array-length v5, v1

    if-ge v11, v5, :cond_22

    .line 876
    sub-int v5, v11, v3

    .line 877
    .local v5, "toBeCopiedLength":I
    array-length v12, v1

    sub-int/2addr v12, v5

    .line 878
    .local v12, "targetIndex":I
    invoke-static {v1, v3, v1, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    invoke-static {v1, v3, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 883
    .end local v5    # "toBeCopiedLength":I
    .end local v12    # "targetIndex":I
    :cond_22
    if-lez v10, :cond_23

    .line 887
    const/16 v5, 0xb

    const/4 v12, -0x1

    aput-byte v12, v1, v5

    const/16 v5, 0xa

    aput-byte v12, v1, v5

    .line 890
    :cond_23
    return-object v1

    .line 863
    .end local v11    # "currentIndex":I
    .local v5, "currentIndex":I
    .restart local v14    # "tmp":I
    :cond_24
    :goto_c
    return-object v16

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method private static inRangeEndExclusive(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1097
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static intToIpAddress(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 406
    .local v0, "buf":Ljava/lang/StringBuilder;
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ipv4AddressToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "ipAddress"    # Ljava/net/Inet4Address;

    .line 393
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 395
    .local v0, "octets":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private static ipv4WordToByte(Ljava/lang/String;II)B
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExclusive"    # I

    .line 365
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, "ret":I
    add-int/lit8 p1, p1, 0x1

    .line 367
    if-ne p1, p2, :cond_0

    .line 368
    int-to-byte v1, v0

    return v1

    .line 370
    :cond_0
    mul-int/lit8 v1, v0, 0xa

    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 371
    .end local v0    # "ret":I
    .local v1, "ret":I
    add-int/lit8 p1, p1, 0x1

    .line 372
    if-ne p1, p2, :cond_1

    .line 373
    int-to-byte v0, v1

    return v0

    .line 375
    :cond_1
    mul-int/lit8 v0, v1, 0xa

    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-byte v0, v0

    return v0
.end method

.method public static isIpV4StackPreferred()Z
    .locals 1

    .line 269
    sget-boolean v0, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    return v0
.end method

.method public static isIpV6AddressesPreferred()Z
    .locals 1

    .line 280
    sget-boolean v0, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    return v0
.end method

.method private static isValidHexChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 591
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidIPv4Mapped([BIII)Z
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "currentIndex"    # I
    .param p2, "compressBegin"    # I
    .param p3, "compressLength"    # I

    .line 610
    add-int v0, p2, p3

    const/16 v1, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 611
    .local v0, "mustBeZero":Z
    :goto_0
    const/16 v1, 0xc

    if-gt p1, v1, :cond_2

    const/4 v4, 0x2

    if-lt p1, v4, :cond_2

    if-eqz v0, :cond_1

    if-ge p2, v1, :cond_2

    :cond_1
    add-int/lit8 v1, p1, -0x1

    aget-byte v1, p0, v1

    add-int/lit8 v4, p1, -0x2

    aget-byte v4, p0, v4

    .line 612
    invoke-static {v1, v4, v0}, Lio/netty/util/NetUtil;->isValidIPv4MappedSeparators(BBZ)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, -0x3

    .line 613
    invoke-static {p0, v3, v1}, Lio/netty/util/internal/PlatformDependent;->isZero([BII)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 611
    :goto_1
    return v2
.end method

.method private static isValidIPv4MappedChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 599
    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isValidIPv4MappedSeparators(BBZ)Z
    .locals 1
    .param p0, "b0"    # B
    .param p1, "b1"    # B
    .param p2, "mustBeZero"    # Z

    .line 606
    if-ne p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidIpV4Address(Lio/netty/util/AsciiString;II)Z
    .locals 4
    .param p0, "ip"    # Lio/netty/util/AsciiString;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 655
    sub-int v0, p2, p1

    .line 657
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 658
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 659
    invoke-virtual {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 660
    invoke-virtual {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 661
    invoke-static {p0, v1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 657
    :goto_0
    return v1
.end method

.method public static isValidIpV4Address(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "ip"    # Ljava/lang/CharSequence;

    .line 623
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private static isValidIpV4Address(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 637
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    .line 638
    invoke-static {v0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Lio/netty/util/AsciiString;II)Z

    move-result v0

    goto :goto_0

    .line 639
    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address0(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 637
    :goto_0
    return v0
.end method

.method public static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 644
    sub-int v0, p2, p1

    .line 646
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 647
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 648
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 649
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 650
    invoke-static {p0, v1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 646
    :goto_0
    return v1
.end method

.method private static isValidIpV4Address0(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 666
    sub-int v0, p2, p1

    .line 668
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 669
    const/16 v2, 0x2e

    invoke-static {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 670
    invoke-static {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 671
    invoke-static {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 672
    invoke-static {p0, v1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 668
    :goto_0
    return v1
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 9
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExclusive"    # I

    .line 576
    sub-int v0, p2, p1

    .line 578
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    const/4 v3, 0x3

    if-gt v0, v3, :cond_7

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c0":C
    const/16 v6, 0x30

    if-ge v4, v6, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    const/16 v4, 0x39

    if-ne v0, v3, :cond_4

    .line 582
    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v7, v3

    .local v7, "c1":C
    if-lt v3, v6, :cond_3

    add-int/lit8 v3, p1, 0x2

    .line 583
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v8, v3

    .local v8, "c2":C
    if-lt v3, v6, :cond_3

    const/16 v3, 0x31

    if-gt v5, v3, :cond_1

    if-gt v7, v4, :cond_1

    if-le v8, v4, :cond_2

    :cond_1
    const/16 v3, 0x32

    if-ne v5, v3, :cond_3

    const/16 v3, 0x35

    if-gt v7, v3, :cond_3

    if-le v8, v3, :cond_2

    if-ge v7, v3, :cond_3

    if-gt v8, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v8    # "c2":C
    :cond_3
    nop

    .line 582
    :goto_0
    return v1

    .line 587
    .end local v7    # "c1":C
    :cond_4
    if-gt v5, v4, :cond_6

    if-eq v0, v2, :cond_5

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    .line 579
    .end local v5    # "c0":C
    :cond_7
    :goto_1
    return v1
.end method

.method public static isValidIpV6Address(Ljava/lang/CharSequence;)Z
    .locals 13
    .param p0, "ip"    # Ljava/lang/CharSequence;

    .line 456
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 457
    .local v0, "end":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 458
    return v2

    .line 463
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 464
    .local v1, "c":C
    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 465
    add-int/lit8 v0, v0, -0x1

    .line 466
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x5d

    if-eq v3, v5, :cond_1

    .line 468
    return v2

    .line 470
    :cond_1
    const/4 v3, 0x1

    .line 471
    .local v3, "start":I
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 473
    .end local v3    # "start":I
    :cond_2
    const/4 v3, 0x0

    .line 478
    .restart local v3    # "start":I
    :goto_0
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_4

    .line 480
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_3

    .line 481
    return v2

    .line 483
    :cond_3
    const/4 v6, 0x2

    .line 484
    .local v6, "colons":I
    move v7, v3

    .line 485
    .local v7, "compressBegin":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 487
    .end local v6    # "colons":I
    .end local v7    # "compressBegin":I
    :cond_4
    const/4 v6, 0x0

    .line 488
    .restart local v6    # "colons":I
    const/4 v7, -0x1

    .line 491
    .restart local v7    # "compressBegin":I
    :goto_1
    const/4 v8, 0x0

    .line 493
    .local v8, "wordLen":I
    move v9, v3

    .local v9, "i":I
    :goto_2
    const/4 v10, 0x7

    if-ge v9, v0, :cond_14

    .line 494
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 495
    invoke-static {v1}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 496
    const/4 v10, 0x4

    if-ge v8, v10, :cond_5

    .line 497
    add-int/lit8 v8, v8, 0x1

    .line 498
    goto :goto_4

    .line 500
    :cond_5
    return v2

    .line 503
    :cond_6
    sparse-switch v1, :sswitch_data_0

    .line 561
    return v2

    .line 505
    :sswitch_0
    if-le v6, v10, :cond_7

    .line 506
    return v2

    .line 508
    :cond_7
    add-int/lit8 v10, v9, -0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_9

    .line 509
    if-ltz v7, :cond_8

    .line 510
    return v2

    .line 512
    :cond_8
    add-int/lit8 v7, v9, -0x1

    goto :goto_3

    .line 514
    :cond_9
    const/4 v8, 0x0

    .line 516
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 517
    nop

    .line 493
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 522
    :sswitch_1
    if-gez v7, :cond_a

    const/4 v4, 0x6

    if-ne v6, v4, :cond_c

    :cond_a
    if-ne v6, v10, :cond_b

    if-ge v7, v3, :cond_c

    :cond_b
    if-le v6, v10, :cond_d

    .line 526
    :cond_c
    return v2

    .line 532
    :cond_d
    sub-int v4, v9, v8

    .line 533
    .local v4, "ipv4Start":I
    add-int/lit8 v10, v4, -0x2

    .line 534
    .local v10, "j":I
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 535
    add-int/lit8 v11, v10, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v10, -0x2

    .line 536
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v10, -0x3

    .line 537
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_5

    .line 540
    :cond_e
    add-int/lit8 v10, v10, -0x5

    goto :goto_6

    .line 538
    :cond_f
    :goto_5
    return v2

    .line 543
    :cond_10
    :goto_6
    if-lt v10, v3, :cond_12

    .line 544
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 545
    .local v11, "tmpChar":C
    const/16 v12, 0x30

    if-eq v11, v12, :cond_11

    if-eq v11, v5, :cond_11

    .line 546
    return v2

    .line 543
    .end local v11    # "tmpChar":C
    :cond_11
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 551
    :cond_12
    add-int/lit8 v2, v4, 0x7

    const/16 v5, 0x25

    invoke-static {p0, v5, v2}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 552
    .local v2, "ipv4End":I
    if-gez v2, :cond_13

    .line 553
    move v2, v0

    .line 555
    :cond_13
    invoke-static {p0, v4, v2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result v5

    return v5

    .line 558
    .end local v2    # "ipv4End":I
    .end local v4    # "ipv4Start":I
    .end local v10    # "j":I
    :sswitch_2
    move v0, v9

    .line 559
    nop

    .line 566
    .end local v9    # "i":I
    :cond_14
    if-gez v7, :cond_16

    .line 567
    if-ne v6, v10, :cond_15

    if-lez v8, :cond_15

    move v2, v4

    :cond_15
    return v2

    .line 570
    :cond_16
    add-int/lit8 v5, v7, 0x2

    if-eq v5, v0, :cond_17

    if-lez v8, :cond_18

    const/16 v5, 0x8

    if-lt v6, v5, :cond_17

    if-gt v7, v3, :cond_18

    :cond_17
    move v2, v4

    :cond_18
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public static isValidIpV6Address(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .line 452
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isValidNumericChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 595
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "ipv4"    # Z

    .line 925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 926
    .local v0, "hostLen":I
    if-eqz p2, :cond_0

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 931
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 932
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5d

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    .line 933
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 935
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private static sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p0, "sysctlKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v1, "sysctl"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 237
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 238
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 239
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 245
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 245
    return-object v6

    .line 243
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 249
    .end local v5    # "i":I
    :cond_1
    nop

    .line 251
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 249
    const/4 v5, 0x0

    return-object v5

    .line 251
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 252
    nop

    .end local v0    # "process":Ljava/lang/Process;
    .end local p0    # "sysctlKey":Ljava/lang/String;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 257
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "process":Ljava/lang/Process;
    .restart local p0    # "sysctlKey":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 258
    throw v1
.end method

.method public static toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 951
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # Ljava/net/InetAddress;
    .param p1, "ipv4Mapped"    # Z

    .line 979
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 982
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 983
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toAddressString([BIZ)Ljava/lang/String;
    .locals 14
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "ipv4Mapped"    # Z

    .line 990
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 991
    .local v1, "words":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 992
    shl-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p1

    .line 993
    .local v3, "idx":I
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v1, v2

    .line 991
    .end local v3    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    .end local v2    # "i":I
    :cond_0
    const/4 v2, -0x1

    .line 999
    .local v2, "currentStart":I
    const/4 v3, -0x1

    .line 1000
    .local v3, "shortestStart":I
    const/4 v4, 0x0

    .line 1001
    .local v4, "shortestLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 1002
    aget v6, v1, v5

    if-nez v6, :cond_1

    .line 1003
    if-gez v2, :cond_3

    .line 1004
    move v2, v5

    goto :goto_2

    .line 1006
    :cond_1
    if-ltz v2, :cond_3

    .line 1007
    sub-int v6, v5, v2

    .line 1008
    .local v6, "currentLength":I
    if-le v6, v4, :cond_2

    .line 1009
    move v3, v2

    .line 1010
    move v4, v6

    .line 1012
    :cond_2
    const/4 v2, -0x1

    .line 1001
    .end local v6    # "currentLength":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1016
    .end local v5    # "i":I
    :cond_4
    if-ltz v2, :cond_5

    .line 1017
    array-length v5, v1

    sub-int/2addr v5, v2

    .line 1018
    .local v5, "currentLength":I
    if-le v5, v4, :cond_5

    .line 1019
    move v3, v2

    .line 1020
    move v4, v5

    .line 1024
    .end local v5    # "currentLength":I
    :cond_5
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1025
    const/4 v4, 0x0

    .line 1026
    const/4 v3, -0x1

    .line 1030
    :cond_6
    add-int v6, v3, v4

    .line 1031
    .local v6, "shortestEnd":I
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1032
    .local v7, "b":Ljava/lang/StringBuilder;
    const/16 v8, 0x3a

    const/4 v9, 0x0

    if-gez v6, :cond_8

    .line 1033
    aget v0, v1, v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3
    array-length v5, v1

    if-ge v0, v5, :cond_7

    .line 1035
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_7
    goto/16 :goto_a

    .line 1041
    :cond_8
    invoke-static {v9, v3, v6}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v10

    const-string v11, "::"

    const/4 v12, 0x5

    if-eqz v10, :cond_a

    .line 1042
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    if-eqz p2, :cond_9

    if-ne v6, v12, :cond_9

    aget v10, v1, v12

    const v13, 0xffff

    if-ne v10, v13, :cond_9

    goto :goto_4

    :cond_9
    move v5, v9

    .local v5, "isIpv4Mapped":Z
    :goto_4
    goto :goto_5

    .line 1045
    .end local v5    # "isIpv4Mapped":Z
    :cond_a
    aget v5, v1, v9

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const/4 v5, 0x0

    .line 1048
    .restart local v5    # "isIpv4Mapped":Z
    :goto_5
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_6
    array-length v10, v1

    if-ge v9, v10, :cond_11

    .line 1049
    invoke-static {v9, v3, v6}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1050
    add-int/lit8 v10, v9, -0x1

    invoke-static {v10, v3, v6}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v10

    const/16 v13, 0x2e

    if-nez v10, :cond_d

    .line 1052
    if-eqz v5, :cond_c

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b

    goto :goto_7

    .line 1055
    :cond_b
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1053
    :cond_c
    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    :cond_d
    :goto_8
    if-eqz v5, :cond_e

    if-le v9, v12, :cond_e

    .line 1059
    aget v10, v1, v9

    shr-int/2addr v10, v0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    aget v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1063
    :cond_e
    aget v10, v1, v9

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1065
    :cond_f
    add-int/lit8 v10, v9, -0x1

    invoke-static {v10, v3, v6}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1067
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :cond_10
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1072
    .end local v5    # "isIpv4Mapped":Z
    .end local v9    # "i":I
    :cond_11
    :goto_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 919
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "portStr":Ljava/lang/String;
    nop

    .line 921
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    .line 920
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 921
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    return-object v1
.end method

.method public static toSocketAddressString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 901
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "port":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-static {p0}, Lio/netty/util/NetUtil;->getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, "hostname":Ljava/lang/String;
    invoke-static {v1}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 907
    .local v1, "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 908
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 909
    .local v1, "address":Ljava/net/InetAddress;
    invoke-static {v1}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "hostString":Ljava/lang/String;
    instance-of v3, v1, Ljava/net/Inet4Address;

    invoke-static {v2, v0, v3}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v3

    .line 912
    .end local v2    # "hostString":Ljava/lang/String;
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static validIpV4ToBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "ip"    # Ljava/lang/String;

    .line 381
    nop

    .line 382
    const/16 v0, 0x2e

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v2

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x2

    .line 383
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v3, v6

    invoke-static {p0, v5, v6}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v5

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v3, 0x2

    .line 384
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v3, v0

    invoke-static {p0, v6, v0}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v0

    add-int/lit8 v6, v3, 0x1

    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p0, v6, v7}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v6

    const/4 v7, 0x4

    new-array v7, v7, [B

    aput-byte v2, v7, v4

    aput-byte v5, v7, v1

    const/4 v1, 0x2

    aput-byte v0, v7, v1

    const/4 v0, 0x3

    aput-byte v6, v7, v0

    .line 381
    return-object v7
.end method
