.class final Lio/netty/buffer/ByteBufUtil$HexUtil;
.super Ljava/lang/Object;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HexUtil"
.end annotation


# static fields
.field private static final BYTE2CHAR:[C

.field private static final BYTE2HEX:[Ljava/lang/String;

.field private static final BYTEPADDING:[Ljava/lang/String;

.field private static final HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

.field private static final HEXDUMP_TABLE:[C

.field private static final HEXPADDING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1452
    const/16 v0, 0x100

    new-array v1, v0, [C

    sput-object v1, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    .line 1453
    const/16 v1, 0x400

    new-array v1, v1, [C

    sput-object v1, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    .line 1454
    const/16 v1, 0x10

    new-array v2, v1, [Ljava/lang/String;

    sput-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    .line 1455
    const/16 v2, 0x1000

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    .line 1456
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    .line 1457
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    .line 1460
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1461
    .local v1, "DIGITS":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1462
    sget-object v3, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    shl-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 1463
    sget-object v3, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 1461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1469
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1470
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    .line 1471
    .local v2, "padding":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1472
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_1

    .line 1473
    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1475
    .end local v4    # "j":I
    :cond_1
    sget-object v4, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1469
    .end local v2    # "padding":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1479
    :cond_2
    const/4 v0, 0x0

    :goto_3
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1481
    .local v2, "buf":Ljava/lang/StringBuilder;
    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    shl-int/lit8 v3, v0, 0x4

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide v5, 0x100000000L

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    const/16 v4, 0x7c

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1484
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1485
    sget-object v3, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1479
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1489
    :cond_3
    const/4 v0, 0x0

    :goto_4
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x20

    if-ge v0, v2, :cond_4

    .line 1490
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1489
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1494
    :cond_4
    const/4 v0, 0x0

    :goto_5
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1495
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    .line 1496
    .local v2, "padding":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1497
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v2, :cond_5

    .line 1498
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1497
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1500
    .end local v5    # "j":I
    :cond_5
    sget-object v5, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1494
    .end local v2    # "padding":I
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1504
    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 1505
    const/16 v2, 0x1f

    if-le v0, v2, :cond_8

    const/16 v2, 0x7f

    if-lt v0, v2, :cond_7

    goto :goto_8

    .line 1508
    :cond_7
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    int-to-char v3, v0

    aput-char v3, v2, v0

    goto :goto_9

    .line 1506
    :cond_8
    :goto_8
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    const/16 v3, 0x2e

    aput-char v3, v2, v0

    .line 1504
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1511
    .end local v0    # "i":I
    .end local v1    # "DIGITS":[C
    :cond_9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1450
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([BII)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1450
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1450
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 1450
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method private static appendHexDumpRowPrefix(Ljava/lang/StringBuilder;II)V
    .locals 4
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "row"    # I
    .param p2, "rowStartIndex"    # I

    .line 1628
    sget-object v0, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1629
    sget-object v0, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1631
    :cond_0
    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    const/16 v1, 0x7c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1634
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1636
    :goto_0
    return-void
.end method

.method private static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 11
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1565
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1570
    if-nez p3, :cond_0

    .line 1571
    return-void

    .line 1573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         +-------------------------------------------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+--------+-------------------------------------------------+----------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    ushr-int/lit8 v0, p3, 0x4

    .line 1579
    .local v0, "fullRows":I
    and-int/lit8 v2, p3, 0xf

    .line 1582
    .local v2, "remainder":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    const/16 v4, 0x7c

    const-string v5, " |"

    if-ge v3, v0, :cond_3

    .line 1583
    shl-int/lit8 v6, v3, 0x4

    add-int/2addr v6, p2

    .line 1586
    .local v6, "rowStartIndex":I
    invoke-static {p0, v3, v6}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendHexDumpRowPrefix(Ljava/lang/StringBuilder;II)V

    .line 1589
    add-int/lit8 v7, v6, 0x10

    .line 1590
    .local v7, "rowEndIndex":I
    move v8, v6

    .local v8, "j":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 1591
    sget-object v9, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {p1, v8}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1593
    .end local v8    # "j":I
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    move v5, v6

    .local v5, "j":I
    :goto_2
    if-ge v5, v7, :cond_2

    .line 1597
    sget-object v8, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    aget-char v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1596
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1599
    .end local v5    # "j":I
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1582
    .end local v6    # "rowStartIndex":I
    .end local v7    # "rowEndIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1603
    .end local v3    # "row":I
    :cond_3
    if-eqz v2, :cond_6

    .line 1604
    shl-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    .line 1605
    .local v3, "rowStartIndex":I
    invoke-static {p0, v0, v3}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendHexDumpRowPrefix(Ljava/lang/StringBuilder;II)V

    .line 1608
    add-int v6, v3, v2

    .line 1609
    .local v6, "rowEndIndex":I
    move v7, v3

    .local v7, "j":I
    :goto_3
    if-ge v7, v6, :cond_4

    .line 1610
    sget-object v8, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {p1, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1612
    .end local v7    # "j":I
    :cond_4
    sget-object v7, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    move v5, v3

    .restart local v5    # "j":I
    :goto_4
    if-ge v5, v6, :cond_5

    .line 1617
    sget-object v7, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1616
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1619
    .end local v5    # "j":I
    :cond_5
    sget-object v5, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1623
    .end local v3    # "rowStartIndex":I
    .end local v6    # "rowEndIndex":I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    return-void

    .line 1566
    .end local v0    # "fullRows":I
    .end local v2    # "remainder":I
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= offset + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= buf.capacity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1568
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 7
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 1514
    const-string v0, "length"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 1515
    if-nez p2, :cond_0

    .line 1516
    const-string v0, ""

    return-object v0

    .line 1519
    :cond_0
    add-int v0, p1, p2

    .line 1520
    .local v0, "endIndex":I
    shl-int/lit8 v1, p2, 0x1

    new-array v1, v1, [C

    .line 1522
    .local v1, "buf":[C
    move v2, p1

    .line 1523
    .local v2, "srcIdx":I
    const/4 v3, 0x0

    .line 1524
    .local v3, "dstIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1525
    sget-object v4, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    .line 1526
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    .line 1525
    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1524
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1530
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private static hexDump([BII)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 1534
    const-string v0, "length"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 1535
    if-nez p2, :cond_0

    .line 1536
    const-string v0, ""

    return-object v0

    .line 1539
    :cond_0
    add-int v0, p1, p2

    .line 1540
    .local v0, "endIndex":I
    shl-int/lit8 v1, p2, 0x1

    new-array v1, v1, [C

    .line 1542
    .local v1, "buf":[C
    move v2, p1

    .line 1543
    .local v2, "srcIdx":I
    const/4 v3, 0x0

    .line 1544
    .local v3, "dstIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1545
    sget-object v4, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1544
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1550
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private static prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1554
    if-nez p2, :cond_0

    .line 1555
    const-string v0, ""

    return-object v0

    .line 1557
    :cond_0
    div-int/lit8 v0, p2, 0x10

    and-int/lit8 v1, p2, 0xf

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 1558
    .local v0, "rows":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1559
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-static {v1, p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    .line 1560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
