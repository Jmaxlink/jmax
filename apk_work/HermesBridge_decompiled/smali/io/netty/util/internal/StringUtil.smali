.class public final Lio/netty/util/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE2HEX_NOPAD:[Ljava/lang/String;

.field private static final BYTE2HEX_PAD:[Ljava/lang/String;

.field public static final CARRIAGE_RETURN:C = '\r'

.field public static final COMMA:C = ','

.field private static final CSV_NUMBER_ESCAPE_CHARACTERS:I = 0x7

.field public static final DOUBLE_QUOTE:C = '\"'

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final HEX2B:[B

.field public static final LINE_FEED:C = '\n'

.field public static final NEWLINE:Ljava/lang/String;

.field private static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    nop

    .line 32
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 41
    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x30

    const/16 v3, 0xf

    if-ge v0, v1, :cond_1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "str":Ljava/lang/String;
    sget-object v4, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    if-le v0, v3, :cond_0

    move-object v2, v1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v4, v0

    .line 57
    sget-object v2, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 54
    .end local v1    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_1
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    .line 63
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 64
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 65
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 66
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x32

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 67
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x33

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 68
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 69
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 70
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 71
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 72
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    .line 73
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 74
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 75
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x42

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 76
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x43

    const/16 v5, 0xc

    aput-byte v5, v0, v1

    .line 77
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x44

    const/16 v6, 0xd

    aput-byte v6, v0, v1

    .line 78
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x45

    const/16 v7, 0xe

    aput-byte v7, v0, v1

    .line 79
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    .line 80
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x61

    aput-byte v2, v0, v1

    .line 81
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x62

    aput-byte v4, v0, v1

    .line 82
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x63

    aput-byte v5, v0, v1

    .line 83
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x64

    aput-byte v6, v0, v1

    .line 84
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x65

    aput-byte v7, v0, v1

    .line 85
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static byteToHexString(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 193
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->byteToHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p0
.end method

.method public static byteToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 185
    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    and-int/lit16 v1, p0, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static byteToHexStringPadded(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 142
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p0
.end method

.method public static byteToHexStringPadded(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 134
    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    and-int/lit16 v1, p0, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static commonSuffixOfLength(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "len"    # I

    .line 127
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0, v0, p1, v1, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 278
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v0

    .line 279
    .local v0, "hi":I
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v1

    .line 280
    .local v1, "lo":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 284
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    int-to-byte v2, v2

    return v2

    .line 281
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v3, p1, 0x2

    .line 282
    invoke-interface {p0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 281
    const-string v4, "invalid hex byte \'%s\' at index %d of \'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p0, "hexDump"    # Ljava/lang/CharSequence;

    .line 312
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 4
    .param p0, "hexDump"    # Ljava/lang/CharSequence;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 295
    if-ltz p2, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    .line 298
    if-nez p2, :cond_0

    .line 299
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0

    .line 301
    :cond_0
    ushr-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    .line 302
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 303
    ushr-int/lit8 v2, v1, 0x1

    add-int v3, p1, v1

    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 302
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 296
    .end local v0    # "bytes":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeHexNibble(B)I
    .locals 1
    .param p0, "b"    # B

    .line 271
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method public static decodeHexNibble(C)I
    .locals 1
    .param p0, "c"    # C

    .line 258
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method public static endsWith(Ljava/lang/CharSequence;C)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "c"    # C

    .line 642
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 643
    .local v0, "len":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static escapeCsv(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 348
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "trimWhiteSpace"    # Z

    .line 362
    const-string v0, "value"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 365
    .local v0, "length":I
    if-eqz p1, :cond_0

    .line 366
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 367
    .local v1, "start":I
    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I

    move-result v2

    .local v2, "last":I
    goto :goto_0

    .line 369
    .end local v1    # "start":I
    .end local v2    # "last":I
    :cond_0
    const/4 v1, 0x0

    .line 370
    .restart local v1    # "start":I
    add-int/lit8 v2, v0, -0x1

    .line 372
    .restart local v2    # "last":I
    :goto_0
    if-le v1, v2, :cond_1

    .line 373
    const-string v3, ""

    return-object v3

    .line 376
    :cond_1
    const/4 v3, -0x1

    .line 377
    .local v3, "firstUnescapedSpecial":I
    const/4 v4, 0x0

    .line 378
    .local v4, "quoted":Z
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 379
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    if-eqz v5, :cond_2

    if-le v2, v1, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 380
    if-eqz v4, :cond_3

    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 382
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 384
    :cond_3
    move v3, v1

    .line 388
    :cond_4
    :goto_2
    if-gez v3, :cond_11

    .line 389
    if-eqz v4, :cond_9

    .line 390
    move v5, v1

    .local v5, "i":I
    :goto_3
    if-gt v5, v2, :cond_8

    .line 391
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 392
    if-eq v5, v2, :cond_6

    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 396
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 393
    :cond_6
    :goto_4
    move v3, v5

    .line 394
    goto :goto_6

    .line 390
    :cond_7
    :goto_5
    add-int/2addr v5, v6

    goto :goto_3

    .end local v5    # "i":I
    :cond_8
    :goto_6
    goto :goto_b

    .line 400
    :cond_9
    move v5, v1

    .restart local v5    # "i":I
    :goto_7
    if-gt v5, v2, :cond_f

    .line 401
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 402
    .local v7, "c":C
    const/16 v8, 0xa

    if-eq v7, v8, :cond_e

    const/16 v8, 0xd

    if-eq v7, v8, :cond_e

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_a

    goto :goto_a

    .line 406
    :cond_a
    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 407
    if-eq v5, v2, :cond_c

    add-int/lit8 v8, v5, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_8

    .line 411
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 408
    :cond_c
    :goto_8
    move v3, v5

    .line 409
    goto :goto_b

    .line 400
    .end local v7    # "c":C
    :cond_d
    :goto_9
    add-int/2addr v5, v6

    goto :goto_7

    .line 403
    .restart local v7    # "c":C
    :cond_e
    :goto_a
    move v3, v5

    .line 404
    nop

    .line 416
    .end local v5    # "i":I
    .end local v7    # "c":C
    :cond_f
    :goto_b
    if-gez v3, :cond_11

    .line 420
    if-eqz v4, :cond_10

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v6, v2, 0x2

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_c

    :cond_10
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_c
    return-object v5

    .line 424
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    sub-int v7, v2, v1

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    .local v5, "result":Ljava/lang/StringBuilder;
    const/16 v7, 0x22

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 426
    move v8, v3

    .local v8, "i":I
    :goto_d
    if-gt v8, v2, :cond_13

    .line 427
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 428
    .local v9, "c":C
    invoke-static {v9}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 429
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    if-ge v8, v2, :cond_12

    add-int/lit8 v10, v8, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 431
    add-int/lit8 v8, v8, 0x1

    .line 434
    :cond_12
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    .end local v9    # "c":C
    add-int/2addr v8, v6

    goto :goto_d

    .line 436
    .end local v8    # "i":I
    :cond_13
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    return-object v6
.end method

.method private static indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "length"    # I

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isOws(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    :cond_0
    return v0
.end method

.method private static indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 708
    add-int/lit8 v0, p2, -0x1

    .line 709
    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isOws(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 712
    :cond_0
    return v0
.end method

.method public static indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 594
    nop

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 595
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    return p1

    .line 594
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 599
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 610
    nop

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 611
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    return p1

    .line 610
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static isDoubleQuote(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 631
    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 583
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private static isOws(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 716
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

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

.method public static isSurrogate(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 627
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "separator"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 672
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    const-string v0, "separator"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string v0, "elements"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 675
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 676
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    const-string v1, ""

    return-object v1

    .line 680
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 681
    .local v1, "firstElement":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    return-object v1

    .line 685
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 687
    .local v2, "builder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 688
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 690
    return-object v2
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 576
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid escaped CSV field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static simpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 331
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "clazz"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 333
    .local v1, "lastDotIdx":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 334
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    :cond_0
    return-object v0
.end method

.method public static simpleClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v0, "null_object"

    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 99
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 100
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 112
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toHexString(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 218
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .locals 4
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 225
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    if-ltz p3, :cond_3

    .line 226
    if-nez p3, :cond_0

    .line 227
    return-object p0

    .line 230
    :cond_0
    add-int v0, p2, p3

    .line 231
    .local v0, "end":I
    add-int/lit8 v1, v0, -0x1

    .line 235
    .local v1, "endMinusOne":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 236
    aget-byte v3, p1, v2

    if-eqz v3, :cond_1

    .line 237
    goto :goto_1

    .line 235
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_2
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p1, v2

    invoke-static {p0, v2}, Lio/netty/util/internal/StringUtil;->byteToHexString(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    .line 242
    sub-int v2, v0, v3

    .line 243
    .local v2, "remaining":I
    invoke-static {p0, p1, v3, v2}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    .line 245
    return-object p0

    .line 225
    .end local v0    # "end":I
    .end local v1    # "endMinusOne":I
    .end local v2    # "remaining":I
    .end local v3    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .line 204
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/StringUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStringPadded(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 167
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 174
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    add-int v0, p2, p3

    .line 175
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 176
    aget-byte v2, p1, v1

    invoke-static {p0, v2}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public static toHexStringPadded([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .line 153
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/StringUtil;->toHexStringPadded([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStringPadded([BII)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimOws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 654
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 655
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 656
    return-object p0

    .line 658
    :cond_0
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 659
    .local v1, "start":I
    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 660
    .local v2, "end":I
    if-nez v1, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    move-object v3, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public static unescapeCsv(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 448
    const-string v0, "value"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 449
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 450
    return-object p0

    .line 452
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 453
    .local v1, "last":I
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, v4, :cond_1

    move v2, v4

    .line 454
    .local v2, "quoted":Z
    :cond_1
    if-nez v2, :cond_2

    .line 455
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->validateCsvFormat(Ljava/lang/CharSequence;)V

    .line 456
    return-object p0

    .line 458
    :cond_2
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    .local v3, "unescaped":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 460
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 461
    .local v6, "current":C
    const/16 v7, 0x22

    if-ne v6, v7, :cond_4

    .line 462
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    if-eq v7, v1, :cond_3

    .line 465
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 468
    :cond_3
    invoke-static {p0, v5}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 471
    :cond_4
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    .end local v6    # "current":C
    add-int/2addr v5, v4

    goto :goto_0

    .line 473
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static unescapeCsvFields(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 9
    .param p0, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 486
    .local v0, "unescaped":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 487
    .local v1, "current":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 488
    .local v2, "quoted":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 489
    .local v3, "last":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v3, :cond_5

    .line 490
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 491
    .local v5, "c":C
    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 492
    packed-switch v5, :pswitch_data_0

    .line 515
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 494
    :pswitch_0
    if-ne v4, v3, :cond_0

    .line 496
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    return-object v0

    .line 499
    :cond_0
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 500
    .local v7, "next":C
    const/16 v8, 0x22

    if-ne v7, v8, :cond_1

    .line 502
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    goto :goto_1

    .line 505
    :cond_1
    const/16 v8, 0x2c

    if-ne v7, v8, :cond_2

    .line 507
    const/4 v2, 0x0

    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 510
    goto :goto_1

    .line 513
    :cond_2
    add-int/lit8 v6, v4, -0x1

    invoke-static {p0, v6}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 518
    .end local v7    # "next":C
    :cond_3
    sparse-switch v5, :sswitch_data_0

    .line 537
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 523
    goto :goto_1

    .line 525
    :sswitch_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 526
    const/4 v2, 0x1

    .line 527
    goto :goto_1

    .line 535
    :cond_4
    :sswitch_2
    invoke-static {p0, v4}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 489
    .end local v5    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 541
    .end local v4    # "i":I
    :cond_5
    if-nez v2, :cond_6

    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    return-object v0

    .line 542
    :cond_6
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private static validateCsvFormat(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 554
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 555
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 556
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :sswitch_0
    invoke-static {p0, v1}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 566
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x22 -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch
.end method
