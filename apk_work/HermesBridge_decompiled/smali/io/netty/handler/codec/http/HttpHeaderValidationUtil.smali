.class public final Lio/netty/handler/codec/http/HttpHeaderValidationUtil;
.super Ljava/lang/Object;
.source "HttpHeaderValidationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;
    }
.end annotation


# static fields
.field private static final TOKEN_CHARS_HIGH:J

.field private static final TOKEN_CHARS_LOW:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 248
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;-><init>(Lio/netty/handler/codec/http/HttpHeaderValidationUtil$1;)V

    .line 249
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->range(CC)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->range(CC)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;

    move-result-object v0

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->range(CC)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 250
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->bits([C)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    .line 251
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->bits([C)Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;

    move-result-object v0

    .line 252
    .local v0, "tokenChars":Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->high()J

    move-result-wide v1

    sput-wide v1, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->TOKEN_CHARS_HIGH:J

    .line 253
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->low()J

    move-result-wide v1

    sput-wide v1, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->TOKEN_CHARS_LOW:J

    .line 254
    .end local v0    # "tokenChars":Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;
    return-void

    :array_0
    .array-data 2
        0x2ds
        0x2es
        0x5fs
        0x7es
    .end array-data

    :array_1
    .array-data 2
        0x21s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x2as
        0x2bs
        0x5es
        0x60s
        0x7cs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static isConnectionHeader(Ljava/lang/CharSequence;Z)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "ignoreTeHeader"    # Z

    .line 65
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 66
    .local v0, "len":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 74
    return v1

    .line 72
    :sswitch_0
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-static {p0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 71
    :sswitch_1
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->PROXY_CONNECTION:Lio/netty/util/AsciiString;

    invoke-static {p0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 69
    :sswitch_2
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-static {p0, v2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    .line 70
    invoke-static {p0, v2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 69
    :cond_1
    return v1

    .line 68
    :sswitch_3
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-static {p0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 67
    :sswitch_4
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    invoke-static {p0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTeNotTrailers(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 92
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 93
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    invoke-static {p0, v0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    .line 94
    invoke-static {p1, v0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 93
    :goto_0
    return v2

    .line 96
    :cond_1
    return v2
.end method

.method private static validateAsciiStringToken(Lio/netty/util/AsciiString;)I
    .locals 8
    .param p0, "token"    # Lio/netty/util/AsciiString;

    .line 194
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v0

    .line 195
    .local v0, "array":[B
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    add-int/2addr v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 196
    aget-byte v3, v0, v1

    sget-wide v4, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->TOKEN_CHARS_HIGH:J

    sget-wide v6, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->TOKEN_CHARS_LOW:J

    invoke-static {v3, v4, v5, v6, v7}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->contains(BJJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v3

    sub-int v3, v1, v3

    return v3

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static validateCharSequenceToken(Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "token"    # Ljava/lang/CharSequence;

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 211
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    .line 212
    .local v2, "value":B
    sget-wide v3, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->TOKEN_CHARS_HIGH:J

    sget-wide v5, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->TOKEN_CHARS_LOW:J

    invoke-static {v2, v3, v4, v5, v6}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil$BitSet128;->contains(BJJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    return v0

    .line 210
    .end local v2    # "value":B
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static validateToken(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "token"    # Ljava/lang/CharSequence;

    .line 181
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->validateAsciiStringToken(Lio/netty/util/AsciiString;)I

    move-result v0

    return v0

    .line 184
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->validateCharSequenceToken(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static validateValidHeaderValue(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 107
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 108
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 109
    const/4 v1, -0x1

    return v1

    .line 111
    :cond_0
    instance-of v1, p0, Lio/netty/util/AsciiString;

    if-eqz v1, :cond_1

    .line 112
    move-object v1, p0

    check-cast v1, Lio/netty/util/AsciiString;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->verifyValidHeaderValueAsciiString(Lio/netty/util/AsciiString;)I

    move-result v1

    return v1

    .line 114
    :cond_1
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->verifyValidHeaderValueCharSequence(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method private static verifyValidHeaderValueAsciiString(Lio/netty/util/AsciiString;)I
    .locals 7
    .param p0, "value"    # Lio/netty/util/AsciiString;

    .line 127
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v0

    .line 128
    .local v0, "array":[B
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v1

    .line 129
    .local v1, "start":I
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 130
    .local v2, "b":I
    const/16 v3, 0x21

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v4

    .line 134
    .local v4, "length":I
    add-int/lit8 v5, v1, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 135
    aget-byte v6, v0, v5

    and-int/lit16 v2, v6, 0xff

    .line 136
    const/16 v6, 0x20

    if-ge v2, v6, :cond_1

    const/16 v6, 0x9

    if-ne v2, v6, :cond_2

    :cond_1
    if-ne v2, v3, :cond_3

    .line 137
    :cond_2
    sub-int v3, v5, v1

    return v3

    .line 134
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    .end local v5    # "i":I
    :cond_4
    const/4 v3, -0x1

    return v3

    .line 131
    .end local v4    # "length":I
    :cond_5
    :goto_1
    const/4 v3, 0x0

    return v3
.end method

.method private static verifyValidHeaderValueCharSequence(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 153
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 154
    .local v1, "b":I
    const/16 v2, 0x21

    if-lt v1, v2, :cond_5

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 158
    .local v0, "length":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 159
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 160
    const/16 v4, 0x20

    if-ge v1, v4, :cond_1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    :cond_1
    if-ne v1, v2, :cond_3

    .line 161
    :cond_2
    return v3

    .line 158
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "i":I
    :cond_4
    const/4 v2, -0x1

    return v2

    .line 155
    .end local v0    # "length":I
    :cond_5
    :goto_1
    return v0
.end method
