.class public final Lio/netty/util/AsciiString;
.super Ljava/lang/Object;
.source "AsciiString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/AsciiString$GeneralCaseInsensitiveCharEqualityComparator;,
        Lio/netty/util/AsciiString$AsciiCaseInsensitiveCharEqualityComparator;,
        Lio/netty/util/AsciiString$DefaultCharEqualityComparator;,
        Lio/netty/util/AsciiString$CharEqualityComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/HashingStrategy<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/HashingStrategy<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STRING:Lio/netty/util/AsciiString;

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final MAX_CHAR_VALUE:C = '\u00ff'


# instance fields
.field private hash:I

.field private final length:I

.field private final offset:I

.field private string:Ljava/lang/String;

.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, ""

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    .line 1362
    new-instance v0, Lio/netty/util/AsciiString$1;

    invoke-direct {v0}, Lio/netty/util/AsciiString$1;-><init>()V

    sput-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    .line 1375
    new-instance v0, Lio/netty/util/AsciiString$2;

    invoke-direct {v0}, Lio/netty/util/AsciiString$2;-><init>()V

    sput-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 212
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;II)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-static {p3}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p2

    .local v1, "j":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 227
    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v3

    aput-byte v3, v2, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/AsciiString;->offset:I

    .line 230
    iput p3, p0, Lio/netty/util/AsciiString;->length:I

    .line 231
    return-void

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= start + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= value.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 237
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;II)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;II)V
    .locals 6
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    add-int v0, p3, p4

    invoke-static {p1, p3, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 246
    .local v0, "cbuf":Ljava/nio/CharBuffer;
    invoke-static {p2}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 247
    .local v1, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    int-to-float v3, p4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 248
    .local v2, "nativeBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 249
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 250
    .local v3, "offset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    .line 251
    const/4 v4, 0x0

    iput v4, p0, Lio/netty/util/AsciiString;->offset:I

    .line 252
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    array-length v4, v4

    iput v4, p0, Lio/netty/util/AsciiString;->length:I

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/util/AsciiString;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIZ)V
    .locals 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "copy"    # Z

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 143
    if-eqz p4, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v0, p2

    .line 145
    .local v0, "bufferOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    add-int v3, v0, p3

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    .line 146
    iput v1, p0, Lio/netty/util/AsciiString;->offset:I

    .line 147
    .end local v0    # "bufferOffset":I
    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    .line 149
    iput p2, p0, Lio/netty/util/AsciiString;->offset:I

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {p3}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 154
    .local v0, "oldPos":I
    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    invoke-virtual {p1, v2, v1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    iput v1, p0, Lio/netty/util/AsciiString;->offset:I

    .line 158
    .end local v0    # "oldPos":I
    :goto_0
    iput p3, p0, Lio/netty/util/AsciiString;->length:I

    .line 159
    return-void

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= start + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= value.capacity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

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

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .param p2, "copy"    # Z

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/util/AsciiString;-><init>(Ljava/nio/ByteBuffer;IIZ)V

    .line 128
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/util/AsciiString;-><init>([BZ)V

    .line 80
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "copy"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p4, :cond_0

    .line 97
    new-array v0, p3, [B

    .line 98
    .local v0, "rangedCopy":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    .line 100
    iput v2, p0, Lio/netty/util/AsciiString;->offset:I

    .line 101
    .end local v0    # "rangedCopy":[B
    goto :goto_0

    .line 102
    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iput-object p1, p0, Lio/netty/util/AsciiString;->value:[B

    .line 107
    iput p2, p0, Lio/netty/util/AsciiString;->offset:I

    .line 109
    :goto_0
    iput p3, p0, Lio/netty/util/AsciiString;->length:I

    .line 110
    return-void

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= start + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= value.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

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

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "copy"    # Z

    .line 87
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    .line 88
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "value"    # [C

    .line 165
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/AsciiString;-><init>([CII)V

    .line 166
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 4
    .param p1, "value"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-static {p3}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p2

    .local v1, "j":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 180
    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    aget-char v3, p1, v1

    invoke-static {v3}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v3

    aput-byte v3, v2, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/AsciiString;->offset:I

    .line 183
    iput p3, p0, Lio/netty/util/AsciiString;->length:I

    .line 184
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= start + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= value.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

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

.method public constructor <init>([CLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "value"    # [C
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 190
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/util/AsciiString;-><init>([CLjava/nio/charset/Charset;II)V

    .line 191
    return-void
.end method

.method public constructor <init>([CLjava/nio/charset/Charset;II)V
    .locals 6
    .param p1, "value"    # [C
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-static {p1, p3, p4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 199
    .local v0, "cbuf":Ljava/nio/CharBuffer;
    invoke-static {p2}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 200
    .local v1, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    int-to-float v3, p4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 201
    .local v2, "nativeBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 202
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 203
    .local v3, "bufferOffset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    .line 204
    const/4 v4, 0x0

    iput v4, p0, Lio/netty/util/AsciiString;->offset:I

    .line 205
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    array-length v4, v4

    iput v4, p0, Lio/netty/util/AsciiString;->length:I

    .line 206
    return-void
.end method

.method static synthetic access$000(CC)Z
    .locals 1
    .param p0, "x0"    # C
    .param p1, "x1"    # C

    .line 47
    invoke-static {p0, p1}, Lio/netty/util/AsciiString;->equalsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method public static b2c(B)C
    .locals 1
    .param p0, "b"    # B

    .line 1867
    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method public static c2b(C)B
    .locals 1
    .param p0, "c"    # C

    .line 1859
    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method private static c2b0(C)B
    .locals 1
    .param p0, "c"    # C

    .line 1863
    int-to-byte v0, p0

    return v0
.end method

.method public static cached(Ljava/lang/String;)Lio/netty/util/AsciiString;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 1403
    new-instance v0, Lio/netty/util/AsciiString;

    invoke-direct {v0, p0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    .line 1404
    .local v0, "asciiString":Lio/netty/util/AsciiString;
    iput-object p0, v0, Lio/netty/util/AsciiString;->string:Ljava/lang/String;

    .line 1405
    return-object v0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 1428
    sget-object v0, Lio/netty/util/AsciiString$DefaultCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$DefaultCharEqualityComparator;

    invoke-static {p0, p1, v0}, Lio/netty/util/AsciiString;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/util/AsciiString$CharEqualityComparator;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/util/AsciiString$CharEqualityComparator;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "cmp"    # Lio/netty/util/AsciiString$CharEqualityComparator;

    .line 1575
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 1578
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1579
    return v2

    .line 1581
    :cond_1
    const/4 v1, 0x0

    .line 1582
    .local v1, "bStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1583
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p2, v4, v5}, Lio/netty/util/AsciiString$CharEqualityComparator;->equals(CC)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1585
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 1586
    return v2

    .line 1588
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1590
    return v0

    .line 1592
    :cond_3
    const/4 v1, 0x0

    .line 1582
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1595
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 1576
    .end local v1    # "bStart":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static containsAllContentEqualsIgnoreCase(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .line 1493
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1494
    .local v1, "v":Ljava/lang/CharSequence;
    invoke-static {p0, v1}, Lio/netty/util/AsciiString;->containsContentEqualsIgnoreCase(Ljava/util/Collection;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1495
    const/4 v0, 0x0

    return v0

    .line 1497
    .end local v1    # "v":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 1498
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static containsContentEqualsIgnoreCase(Ljava/util/Collection;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .line 1475
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1476
    .local v1, "v":Ljava/lang/CharSequence;
    invoke-static {p1, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    const/4 v0, 0x1

    return v0

    .line 1479
    .end local v1    # "v":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 1480
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 1435
    sget-object v0, Lio/netty/util/AsciiString$AsciiCaseInsensitiveCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$AsciiCaseInsensitiveCharEqualityComparator;

    invoke-static {p0, p1, v0}, Lio/netty/util/AsciiString;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/util/AsciiString$CharEqualityComparator;)Z

    move-result v0

    return v0
.end method

.method public static contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 1505
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1509
    :cond_0
    instance-of v2, p0, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_1

    .line 1510
    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1513
    :cond_1
    instance-of v2, p1, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_2

    .line 1514
    move-object v0, p1

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-virtual {v0, p0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1517
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1518
    return v1

    .line 1520
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1521
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1522
    return v1

    .line 1520
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    .end local v2    # "i":I
    :cond_5
    return v0

    .line 1506
    :cond_6
    :goto_1
    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0
.end method

.method public static contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 1443
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1447
    :cond_0
    instance-of v2, p0, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_1

    .line 1448
    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1450
    :cond_1
    instance-of v2, p1, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_2

    .line 1451
    move-object v0, p1

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-virtual {v0, p0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1454
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1455
    return v1

    .line 1457
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1458
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lio/netty/util/AsciiString;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1459
    return v1

    .line 1457
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1462
    .end local v2    # "i":I
    :cond_5
    return v0

    .line 1444
    :cond_6
    :goto_1
    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0
.end method

.method private static equalsIgnoreCase(BB)Z
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B

    .line 1821
    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lio/netty/util/AsciiString;->toLowerCase(B)B

    move-result v0

    invoke-static {p1}, Lio/netty/util/AsciiString;->toLowerCase(B)B

    move-result v1

    if-ne v0, v1, :cond_0

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

.method private static equalsIgnoreCase(CC)Z
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C

    .line 1825
    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lio/netty/util/AsciiString;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Lio/netty/util/AsciiString;->toLowerCase(C)C

    move-result v1

    if-ne v0, v1, :cond_0

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

.method private forEachByte0(IILio/netty/util/ByteProcessor;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "visitor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    iget v0, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 282
    .local v0, "len":I
    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 283
    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v2, v2, v1

    invoke-interface {p3, v2}, Lio/netty/util/ByteProcessor;->process(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v2, v1, v2

    return v2

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private forEachByteDesc0(IILio/netty/util/ByteProcessor;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "visitor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    iget v0, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v0, p1

    .line 317
    .local v0, "end":I
    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 318
    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v2, v2, v1

    invoke-interface {p3, v2}, Lio/netty/util/ByteProcessor;->process(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v2, v1, v2

    return v2

    .line 317
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static hashCode(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 1414
    if-nez p0, :cond_0

    .line 1415
    const/4 v0, 0x0

    return v0

    .line 1417
    :cond_0
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    .line 1418
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 1421
    :cond_1
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->hashCodeAscii(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # C
    .param p2, "start"    # I

    .line 1803
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1804
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0

    .line 1805
    :cond_0
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    .line 1806
    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-virtual {v0, p1, p2}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v0

    return v0

    .line 1808
    :cond_1
    const/4 v0, -0x1

    if-nez p0, :cond_2

    .line 1809
    return v0

    .line 1811
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1812
    .local v1, "sz":I
    if-gez p2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1813
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_4

    .line 1814
    return v2

    .line 1812
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1817
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1716
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1719
    :cond_0
    if-gez p2, :cond_1

    .line 1720
    const/4 p2, 0x0

    .line 1722
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1723
    .local v7, "searchStrLen":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v7

    add-int/lit8 v8, v1, 0x1

    .line 1724
    .local v8, "endLimit":I
    if-le p2, v8, :cond_2

    .line 1725
    return v0

    .line 1727
    :cond_2
    if-nez v7, :cond_3

    .line 1728
    return p2

    .line 1730
    :cond_3
    move v1, p2

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 1731
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lio/netty/util/AsciiString;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1732
    return v9

    .line 1730
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1735
    .end local v9    # "i":I
    :cond_5
    return v0

    .line 1717
    .end local v7    # "searchStrLen":I
    .end local v8    # "endLimit":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static indexOfIgnoreCaseAscii(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1769
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1772
    :cond_0
    if-gez p2, :cond_1

    .line 1773
    const/4 p2, 0x0

    .line 1775
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1776
    .local v7, "searchStrLen":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v7

    add-int/lit8 v8, v1, 0x1

    .line 1777
    .local v8, "endLimit":I
    if-le p2, v8, :cond_2

    .line 1778
    return v0

    .line 1780
    :cond_2
    if-nez v7, :cond_3

    .line 1781
    return p2

    .line 1783
    :cond_3
    move v1, p2

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 1784
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lio/netty/util/AsciiString;->regionMatchesAscii(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1785
    return v9

    .line 1783
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1788
    .end local v9    # "i":I
    :cond_5
    return v0

    .line 1770
    .end local v7    # "searchStrLen":I
    .end local v8    # "endLimit":I
    :cond_6
    :goto_1
    return v0
.end method

.method private static isLowerCase(B)Z
    .locals 1
    .param p0, "value"    # B

    .line 1847
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpperCase(B)Z
    .locals 1
    .param p0, "value"    # B

    .line 1851
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpperCase(C)Z
    .locals 1
    .param p0, "value"    # C

    .line 1855
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;
    .locals 1
    .param p0, "string"    # Ljava/lang/CharSequence;

    .line 1393
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/AsciiString;

    invoke-direct {v0, p0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method

.method private parseInt(IIIZ)I
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .param p4, "negative"    # Z

    .line 1263
    const/high16 v0, -0x80000000

    div-int/2addr v0, p3

    .line 1264
    .local v0, "max":I
    const/4 v1, 0x0

    .line 1265
    .local v1, "result":I
    move v2, p1

    .line 1266
    .local v2, "currOffset":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_3

    .line 1267
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "currOffset":I
    .local v5, "currOffset":I
    iget v6, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v2, v6

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1268
    .local v2, "digit":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1271
    if-gt v0, v1, :cond_1

    .line 1274
    mul-int v4, v1, p3

    sub-int/2addr v4, v2

    .line 1275
    .local v4, "next":I
    if-gt v4, v1, :cond_0

    .line 1278
    move v1, v4

    .line 1279
    .end local v2    # "digit":I
    .end local v4    # "next":I
    move v2, v5

    goto :goto_0

    .line 1276
    .restart local v2    # "digit":I
    .restart local v4    # "next":I
    :cond_0
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1272
    .end local v4    # "next":I
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1269
    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1280
    .end local v5    # "currOffset":I
    .local v2, "currOffset":I
    :cond_3
    if-nez p4, :cond_5

    .line 1281
    neg-int v1, v1

    .line 1282
    if-ltz v1, :cond_4

    goto :goto_1

    .line 1283
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1286
    :cond_5
    :goto_1
    return v1
.end method

.method private parseLong(IIIZ)J
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .param p4, "negative"    # Z

    .line 1320
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-wide/high16 v4, -0x8000000000000000L

    int-to-long v6, v3

    div-long/2addr v4, v6

    .line 1321
    .local v4, "max":J
    const-wide/16 v6, 0x0

    .line 1322
    .local v6, "result":J
    move/from16 v8, p1

    .line 1323
    .local v8, "currOffset":I
    :goto_0
    const/4 v9, 0x0

    if-ge v8, v2, :cond_3

    .line 1324
    iget-object v10, v0, Lio/netty/util/AsciiString;->value:[B

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "currOffset":I
    .local v11, "currOffset":I
    iget v12, v0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v8, v12

    aget-byte v8, v10, v8

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 1325
    .local v8, "digit":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 1328
    cmp-long v10, v4, v6

    if-gtz v10, :cond_1

    .line 1331
    int-to-long v12, v3

    mul-long/2addr v12, v6

    int-to-long v14, v8

    sub-long/2addr v12, v14

    .line 1332
    .local v12, "next":J
    cmp-long v10, v12, v6

    if-gtz v10, :cond_0

    .line 1335
    move-wide v6, v12

    .line 1336
    .end local v8    # "digit":I
    .end local v12    # "next":J
    move v8, v11

    goto :goto_0

    .line 1333
    .restart local v8    # "digit":I
    .restart local v12    # "next":J
    :cond_0
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {v0, v1, v2, v9}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1329
    .end local v12    # "next":J
    :cond_1
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {v0, v1, v2, v9}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1326
    :cond_2
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {v0, v1, v2, v9}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1337
    .end local v11    # "currOffset":I
    .local v8, "currOffset":I
    :cond_3
    if-nez p4, :cond_5

    .line 1338
    neg-long v6, v6

    .line 1339
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_4

    goto :goto_1

    .line 1340
    :cond_4
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {v0, v1, v2, v9}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1343
    :cond_5
    :goto_1
    return-wide v6
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "csStart"    # I
    .param p3, "string"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 1636
    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1640
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1641
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 1644
    :cond_1
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_2

    .line 1645
    move-object v1, p0

    check-cast v1, Lio/netty/util/AsciiString;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lio/netty/util/AsciiString;->regionMatches(ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 1648
    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lio/netty/util/AsciiString$GeneralCaseInsensitiveCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$GeneralCaseInsensitiveCharEqualityComparator;

    goto :goto_0

    :cond_3
    sget-object v0, Lio/netty/util/AsciiString$DefaultCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$DefaultCharEqualityComparator;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v1 .. v6}, Lio/netty/util/AsciiString;->regionMatchesCharSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IILio/netty/util/AsciiString$CharEqualityComparator;)Z

    move-result v0

    return v0

    .line 1637
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static regionMatchesAscii(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "csStart"    # I
    .param p3, "string"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 1665
    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1669
    :cond_0
    if-nez p1, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1673
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 1676
    :cond_1
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_2

    .line 1677
    move-object v1, p0

    check-cast v1, Lio/netty/util/AsciiString;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lio/netty/util/AsciiString;->regionMatches(ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 1680
    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lio/netty/util/AsciiString$AsciiCaseInsensitiveCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$AsciiCaseInsensitiveCharEqualityComparator;

    goto :goto_0

    :cond_3
    sget-object v0, Lio/netty/util/AsciiString$DefaultCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$DefaultCharEqualityComparator;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v1 .. v6}, Lio/netty/util/AsciiString;->regionMatchesCharSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IILio/netty/util/AsciiString$CharEqualityComparator;)Z

    move-result v0

    return v0

    .line 1666
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static regionMatchesCharSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IILio/netty/util/AsciiString$CharEqualityComparator;)Z
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "csStart"    # I
    .param p2, "string"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "charEqualityComparator"    # Lio/netty/util/AsciiString$CharEqualityComparator;

    .line 1602
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-le p4, v1, :cond_0

    goto :goto_2

    .line 1605
    :cond_0
    if-ltz p3, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p4, v1, :cond_1

    goto :goto_1

    .line 1609
    :cond_1
    move v1, p1

    .line 1610
    .local v1, "csIndex":I
    add-int v2, v1, p4

    .line 1611
    .local v2, "csEnd":I
    move v3, p3

    .line 1613
    .local v3, "stringIndex":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1614
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "csIndex":I
    .local v4, "csIndex":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1615
    .local v1, "c1":C
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "stringIndex":I
    .local v5, "stringIndex":I
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1617
    .local v3, "c2":C
    invoke-interface {p5, v1, v3}, Lio/netty/util/AsciiString$CharEqualityComparator;->equals(CC)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1618
    return v0

    .line 1620
    .end local v1    # "c1":C
    .end local v3    # "c2":C
    :cond_2
    move v1, v4

    move v3, v5

    goto :goto_0

    .line 1621
    .end local v4    # "csIndex":I
    .end local v5    # "stringIndex":I
    .local v1, "csIndex":I
    .local v3, "stringIndex":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1606
    .end local v1    # "csIndex":I
    .end local v2    # "csEnd":I
    .end local v3    # "stringIndex":I
    :cond_4
    :goto_1
    return v0

    .line 1603
    :cond_5
    :goto_2
    return v0
.end method

.method private static toAsciiStringArray([Ljava/lang/String;)[Lio/netty/util/AsciiString;
    .locals 4
    .param p0, "jdkResult"    # [Ljava/lang/String;

    .line 1529
    array-length v0, p0

    new-array v0, v0, [Lio/netty/util/AsciiString;

    .line 1530
    .local v0, "res":[Lio/netty/util/AsciiString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1531
    new-instance v2, Lio/netty/util/AsciiString;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    aput-object v2, v0, v1

    .line 1530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1533
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toLowerCase(B)B
    .locals 1
    .param p0, "b"    # B

    .line 1829
    invoke-static {p0}, Lio/netty/util/AsciiString;->isUpperCase(B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static toLowerCase(C)C
    .locals 1
    .param p0, "c"    # C

    .line 1839
    invoke-static {p0}, Lio/netty/util/AsciiString;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static toUpperCase(B)B
    .locals 1
    .param p0, "b"    # B

    .line 1843
    invoke-static {p0}, Lio/netty/util/AsciiString;->isLowerCase(B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, -0x20

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "c"    # Ljava/lang/CharSequence;

    .line 989
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 990
    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 993
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 995
    :cond_1
    const/4 v0, 0x0

    .local v0, "start":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 996
    .local v1, "last":I
    move v2, v1

    .line 997
    .local v2, "end":I
    :goto_0
    const/16 v3, 0x20

    if-gt v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_2

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_2
    :goto_1
    if-lt v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_3

    .line 1001
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1003
    :cond_3
    if-nez v0, :cond_4

    if-ne v2, v1, :cond_4

    .line 1004
    return-object p0

    .line 1006
    :cond_4
    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 370
    iget-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    return-object v0
.end method

.method public arrayChanged()V
    .locals 1

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/AsciiString;->string:Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/AsciiString;->hash:I

    .line 360
    return-void
.end method

.method public arrayOffset()I
    .locals 1

    .line 379
    iget v0, p0, Lio/netty/util/AsciiString;->offset:I

    return v0
.end method

.method public byteAt(I)B
    .locals 3
    .param p1, "index"    # I

    .line 328
    if-ltz p1, :cond_1

    iget v0, p0, Lio/netty/util/AsciiString;->length:I

    if-ge p1, v0, :cond_1

    .line 332
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be in the range [0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/util/AsciiString;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 424
    invoke-virtual {p0, p1}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result v0

    invoke-static {v0}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 452
    if-ne p0, p1, :cond_0

    .line 453
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    .line 458
    .local v0, "length1":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 459
    .local v1, "length2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 460
    .local v2, "minLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v4

    .local v4, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 461
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v5, v5, v4

    invoke-static {v5}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    .line 462
    .local v5, "result":I
    if-eqz v5, :cond_1

    .line 463
    return v5

    .line 460
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "result":I
    :cond_2
    sub-int v3, v0, v1

    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/util/AsciiString;->compareTo(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public concat(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;
    .locals 7
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 477
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    .line 478
    .local v0, "thisLen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 479
    .local v1, "thatLen":I
    if-nez v1, :cond_0

    .line 480
    return-object p0

    .line 483
    :cond_0
    instance-of v2, p1, Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 484
    move-object v2, p1

    check-cast v2, Lio/netty/util/AsciiString;

    .line 485
    .local v2, "that":Lio/netty/util/AsciiString;
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    return-object v2

    .line 489
    :cond_1
    add-int v4, v0, v1

    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v4

    .line 490
    .local v4, "newValue":[B
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v6

    invoke-static {v5, v6, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v5, v2, Lio/netty/util/AsciiString;->value:[B

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v6

    invoke-static {v5, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    new-instance v5, Lio/netty/util/AsciiString;

    invoke-direct {v5, v4, v3}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v5

    .line 495
    .end local v2    # "that":Lio/netty/util/AsciiString;
    .end local v4    # "newValue":[B
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    new-instance v2, Lio/netty/util/AsciiString;

    invoke-direct {v2, p1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2

    .line 499
    :cond_3
    add-int v2, v0, v1

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v2

    .line 500
    .local v2, "newValue":[B
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v5

    invoke-static {v4, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    move v4, v0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_4

    .line 502
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v6

    aput-byte v6, v2, v4

    .line 501
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 505
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_4
    new-instance v4, Lio/netty/util/AsciiString;

    invoke-direct {v4, v2, v3}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v4
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 434
    invoke-virtual {p0, p1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "a"    # Ljava/lang/CharSequence;

    .line 1037
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1038
    return v0

    .line 1041
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1044
    :cond_1
    instance-of v2, p1, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_2

    .line 1045
    invoke-virtual {p0, p1}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1048
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1049
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v4, v4, v2

    invoke-static {v4}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1050
    return v1

    .line 1048
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1053
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_4
    return v0

    .line 1042
    :cond_5
    :goto_1
    return v1
.end method

.method public contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 528
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 529
    return v0

    .line 532
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 536
    :cond_1
    instance-of v2, p1, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_4

    .line 537
    move-object v2, p1

    check-cast v2, Lio/netty/util/AsciiString;

    .line 538
    .local v2, "rhs":Lio/netty/util/AsciiString;
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v3

    .local v3, "i":I
    invoke-virtual {v2}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v4

    .local v4, "j":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v5

    add-int/2addr v5, v3

    .local v5, "end":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 539
    iget-object v6, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v6, v6, v3

    iget-object v7, v2, Lio/netty/util/AsciiString;->value:[B

    aget-byte v7, v7, v4

    invoke-static {v6, v7}, Lio/netty/util/AsciiString;->equalsIgnoreCase(BB)Z

    move-result v6

    if-nez v6, :cond_2

    .line 540
    return v1

    .line 538
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "end":I
    :cond_3
    return v0

    .line 546
    .end local v2    # "rhs":Lio/netty/util/AsciiString;
    :cond_4
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v4

    .local v4, "end":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 547
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lio/netty/util/AsciiString;->equalsIgnoreCase(CC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 548
    return v1

    .line 546
    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 551
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "end":I
    :cond_6
    return v0

    .line 533
    :cond_7
    :goto_2
    return v1
.end method

.method public copy(I[BII)V
    .locals 3
    .param p1, "srcIdx"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIdx"    # I
    .param p4, "length"    # I

    .line 414
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p4, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v1, p1

    const-string v2, "dst"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= srcIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcIdx + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcLen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 416
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

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

.method public copy(I[CII)V
    .locals 4
    .param p1, "srcIdx"    # I
    .param p2, "dst"    # [C
    .param p3, "dstIdx"    # I
    .param p4, "length"    # I

    .line 595
    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p4, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    add-int v0, p3, p4

    .line 603
    .local v0, "dstEnd":I
    move v1, p3

    .local v1, "i":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    .local v2, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    iget-object v3, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v3, v3, v2

    invoke-static {v3}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v3

    aput-char v3, p2, v1

    .line 603
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_0
    return-void

    .line 598
    .end local v0    # "dstEnd":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= srcIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcIdx + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcLen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 599
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

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

.method public endsWith(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 516
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 517
    .local v0, "suffixLen":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lio/netty/util/AsciiString;->regionMatches(ILjava/lang/CharSequence;II)Z

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1140
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/netty/util/AsciiString;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1143
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 1144
    return v1

    .line 1147
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/netty/util/AsciiString;

    .line 1148
    .local v2, "other":Lio/netty/util/AsciiString;
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1149
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1150
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v6

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lio/netty/util/internal/PlatformDependent;->equals([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 1148
    :goto_0
    return v0

    .line 1141
    .end local v2    # "other":Lio/netty/util/AsciiString;
    :cond_3
    :goto_1
    return v0
.end method

.method public forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "visitor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lio/netty/util/AsciiString;->forEachByte0(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= start + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

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

.method public forEachByte(Lio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "visitor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lio/netty/util/AsciiString;->forEachByte0(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "visitor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lio/netty/util/AsciiString;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= start + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

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

.method public forEachByteDesc(Lio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "visitor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lio/netty/util/AsciiString;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1130
    iget v0, p0, Lio/netty/util/AsciiString;->hash:I

    .line 1131
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 1132
    iget-object v1, p0, Lio/netty/util/AsciiString;->value:[B

    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    iget v3, p0, Lio/netty/util/AsciiString;->length:I

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/PlatformDependent;->hashCodeAscii([BII)I

    move-result v0

    .line 1133
    iput v0, p0, Lio/netty/util/AsciiString;->hash:I

    .line 1135
    :cond_0
    return v0
.end method

.method public indexOf(CI)I
    .locals 5
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .line 721
    const/16 v0, 0xff

    const/4 v1, -0x1

    if-le p1, v0, :cond_0

    .line 722
    return v1

    .line 725
    :cond_0
    if-gez p2, :cond_1

    .line 726
    const/4 p2, 0x0

    .line 729
    :cond_1
    invoke-static {p1}, Lio/netty/util/AsciiString;->c2b0(C)B

    move-result v0

    .line 730
    .local v0, "chAsByte":B
    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    iget v3, p0, Lio/netty/util/AsciiString;->length:I

    add-int/2addr v2, v3

    .line 731
    .local v2, "len":I
    iget v3, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 732
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v4, v4, v3

    if-ne v4, v0, :cond_2

    .line 733
    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v1, v3, v1

    return v1

    .line 731
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method public indexOf(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/CharSequence;I)I
    .locals 10
    .param p1, "subString"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 680
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 681
    .local v0, "subCount":I
    if-gez p2, :cond_0

    .line 682
    const/4 p2, 0x0

    .line 684
    :cond_0
    if-gtz v0, :cond_2

    .line 685
    iget v1, p0, Lio/netty/util/AsciiString;->length:I

    if-ge p2, v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    iget v1, p0, Lio/netty/util/AsciiString;->length:I

    :goto_0
    return v1

    .line 687
    :cond_2
    iget v1, p0, Lio/netty/util/AsciiString;->length:I

    sub-int/2addr v1, p2

    const/4 v2, -0x1

    if-le v0, v1, :cond_3

    .line 688
    return v2

    .line 691
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 692
    .local v1, "firstChar":C
    const/16 v3, 0xff

    if-le v1, v3, :cond_4

    .line 693
    return v2

    .line 695
    :cond_4
    invoke-static {v1}, Lio/netty/util/AsciiString;->c2b0(C)B

    move-result v3

    .line 696
    .local v3, "firstCharAsByte":B
    iget v4, p0, Lio/netty/util/AsciiString;->offset:I

    iget v5, p0, Lio/netty/util/AsciiString;->length:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 697
    .local v4, "len":I
    iget v5, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v5, p2

    .local v5, "i":I
    :goto_1
    if-gt v5, v4, :cond_7

    .line 698
    iget-object v6, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v6, v6, v5

    if-ne v6, v3, :cond_6

    .line 699
    move v6, v5

    .local v6, "o1":I
    const/4 v7, 0x0

    .line 700
    .local v7, "o2":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v0, :cond_5

    iget-object v8, p0, Lio/netty/util/AsciiString;->value:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v8, v8, v6

    invoke-static {v8}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v8

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_5

    goto :goto_2

    .line 703
    :cond_5
    if-ne v7, v0, :cond_6

    .line 704
    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v2, v5, v2

    return v2

    .line 697
    .end local v6    # "o1":I
    .end local v7    # "o2":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 708
    .end local v5    # "i":I
    :cond_7
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 342
    iget v0, p0, Lio/netty/util/AsciiString;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEntireArrayUsed()Z
    .locals 2

    .line 387
    iget v0, p0, Lio/netty/util/AsciiString;->offset:I

    if-nez v0, :cond_0

    iget v0, p0, Lio/netty/util/AsciiString;->length:I

    iget-object v1, p0, Lio/netty/util/AsciiString;->value:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 750
    iget v0, p0, Lio/netty/util/AsciiString;->length:I

    invoke-virtual {p0, p1, v0}, Lio/netty/util/AsciiString;->lastIndexOf(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 764
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 765
    .local v0, "subCount":I
    iget v1, p0, Lio/netty/util/AsciiString;->length:I

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 766
    const/4 v1, -0x1

    if-gez p2, :cond_0

    .line 767
    return v1

    .line 769
    :cond_0
    if-nez v0, :cond_1

    .line 770
    return p2

    .line 773
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 774
    .local v2, "firstChar":C
    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 775
    return v1

    .line 777
    :cond_2
    invoke-static {v2}, Lio/netty/util/AsciiString;->c2b0(C)B

    move-result v3

    .line 778
    .local v3, "firstCharAsByte":B
    iget v4, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v4, p2

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lio/netty/util/AsciiString;->offset:I

    if-lt v4, v5, :cond_5

    .line 779
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v5, v5, v4

    if-ne v5, v3, :cond_4

    .line 780
    move v5, v4

    .local v5, "o1":I
    const/4 v6, 0x0

    .line 781
    .local v6, "o2":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v0, :cond_3

    iget-object v7, p0, Lio/netty/util/AsciiString;->value:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v7, v7, v5

    invoke-static {v7}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v7

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    goto :goto_1

    .line 784
    :cond_3
    if-ne v6, v0, :cond_4

    .line 785
    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v1, v4, v1

    return v1

    .line 778
    .end local v5    # "o1":I
    .end local v6    # "o2":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 789
    .end local v4    # "i":I
    :cond_5
    return v1
.end method

.method public length()I
    .locals 1

    .line 350
    iget v0, p0, Lio/netty/util/AsciiString;->length:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;

    .line 1065
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public parseBoolean()Z
    .locals 3

    .line 1195
    iget v0, p0, Lio/netty/util/AsciiString;->length:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    aget-byte v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public parseChar()C
    .locals 1

    .line 1199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/util/AsciiString;->parseChar(I)C

    move-result v0

    return v0
.end method

.method public parseChar(I)C
    .locals 4
    .param p1, "start"    # I

    .line 1203
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1207
    iget v0, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v0, p1

    .line 1208
    .local v0, "startWithOffset":I
    iget-object v1, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v2

    or-int/2addr v1, v2

    int-to-char v1, v1

    return v1

    .line 1204
    .end local v0    # "startWithOffset":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 bytes required to convert to character. index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " would go out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseDouble()D
    .locals 2

    .line 1355
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/AsciiString;->parseDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public parseDouble(II)D
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1359
    invoke-virtual {p0, p1, p2}, Lio/netty/util/AsciiString;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public parseFloat()F
    .locals 2

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/AsciiString;->parseFloat(II)F

    move-result v0

    return v0
.end method

.method public parseFloat(II)F
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1351
    invoke-virtual {p0, p1, p2}, Lio/netty/util/AsciiString;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public parseInt()I
    .locals 3

    .line 1233
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lio/netty/util/AsciiString;->parseInt(III)I

    move-result v0

    return v0
.end method

.method public parseInt(I)I
    .locals 2
    .param p1, "radix"    # I

    .line 1237
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/AsciiString;->parseInt(III)I

    move-result v0

    return v0
.end method

.method public parseInt(II)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1241
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/AsciiString;->parseInt(III)I

    move-result v0

    return v0
.end method

.method public parseInt(III)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I

    .line 1245
    const/4 v0, 0x2

    if-lt p3, v0, :cond_4

    const/16 v0, 0x24

    if-gt p3, v0, :cond_4

    .line 1249
    if-eq p1, p2, :cond_3

    .line 1253
    move v0, p1

    .line 1254
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1255
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-eq v0, p2, :cond_1

    goto :goto_1

    .line 1256
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1259
    :cond_2
    :goto_1
    invoke-direct {p0, v0, p2, p3, v1}, Lio/netty/util/AsciiString;->parseInt(IIIZ)I

    move-result v2

    return v2

    .line 1250
    .end local v0    # "i":I
    .end local v1    # "negative":Z
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 1246
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public parseLong()J
    .locals 3

    .line 1290
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lio/netty/util/AsciiString;->parseLong(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseLong(I)J
    .locals 2
    .param p1, "radix"    # I

    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/AsciiString;->parseLong(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseLong(II)J
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1298
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/AsciiString;->parseLong(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseLong(III)J
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I

    .line 1302
    const/4 v0, 0x2

    if-lt p3, v0, :cond_4

    const/16 v0, 0x24

    if-gt p3, v0, :cond_4

    .line 1306
    if-eq p1, p2, :cond_3

    .line 1310
    move v0, p1

    .line 1311
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1312
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-eq v0, p2, :cond_1

    goto :goto_1

    .line 1313
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1316
    :cond_2
    :goto_1
    invoke-direct {p0, v0, p2, p3, v1}, Lio/netty/util/AsciiString;->parseLong(IIIZ)J

    move-result-wide v2

    return-wide v2

    .line 1307
    .end local v0    # "i":I
    .end local v1    # "negative":Z
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 1303
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public parseShort()S
    .locals 3

    .line 1212
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lio/netty/util/AsciiString;->parseShort(III)S

    move-result v0

    return v0
.end method

.method public parseShort(I)S
    .locals 2
    .param p1, "radix"    # I

    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/AsciiString;->parseShort(III)S

    move-result v0

    return v0
.end method

.method public parseShort(II)S
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1220
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/AsciiString;->parseShort(III)S

    move-result v0

    return v0
.end method

.method public parseShort(III)S
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I

    .line 1224
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/AsciiString;->parseInt(III)I

    move-result v0

    .line 1225
    .local v0, "intValue":I
    int-to-short v1, v0

    .line 1226
    .local v1, "result":S
    if-ne v1, v0, :cond_0

    .line 1229
    return v1

    .line 1227
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public regionMatches(ILjava/lang/CharSequence;II)Z
    .locals 8
    .param p1, "thisStart"    # I
    .param p2, "string"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 804
    const-string v0, "string"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 806
    const/4 v0, 0x0

    if-ltz p3, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-ge v1, p4, :cond_0

    goto :goto_2

    .line 810
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    .line 811
    .local v1, "thisLen":I
    if-ltz p1, :cond_5

    sub-int v2, v1, p1

    if-ge v2, p4, :cond_1

    goto :goto_1

    .line 815
    :cond_1
    const/4 v2, 0x1

    if-gtz p4, :cond_2

    .line 816
    return v2

    .line 819
    :cond_2
    add-int v3, p3, p4

    .line 820
    .local v3, "thatEnd":I
    move v4, p3

    .local v4, "i":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v5

    add-int/2addr v5, p1

    .local v5, "j":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 821
    iget-object v6, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v6, v6, v5

    invoke-static {v6}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v6

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 822
    return v0

    .line 820
    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 825
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_4
    return v2

    .line 812
    .end local v3    # "thatEnd":I
    :cond_5
    :goto_1
    return v0

    .line 807
    .end local v1    # "thisLen":I
    :cond_6
    :goto_2
    return v0
.end method

.method public regionMatches(ZILjava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "string"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 841
    if-nez p1, :cond_0

    .line 842
    invoke-virtual {p0, p2, p3, p4, p5}, Lio/netty/util/AsciiString;->regionMatches(ILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 845
    :cond_0
    const-string v0, "string"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 847
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    .line 848
    .local v0, "thisLen":I
    const/4 v1, 0x0

    if-ltz p2, :cond_6

    sub-int v2, v0, p2

    if-le p5, v2, :cond_1

    goto :goto_2

    .line 851
    :cond_1
    if-ltz p4, :cond_5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    if-le p5, v2, :cond_2

    goto :goto_1

    .line 855
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr p2, v2

    .line 856
    add-int v2, p2, p5

    .line 857
    .local v2, "thisEnd":I
    :goto_0
    if-ge p2, v2, :cond_4

    .line 858
    iget-object v3, p0, Lio/netty/util/AsciiString;->value:[B

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "thisStart":I
    .local v4, "thisStart":I
    aget-byte p2, v3, p2

    invoke-static {p2}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result p2

    add-int/lit8 v3, p4, 0x1

    .end local p4    # "start":I
    .local v3, "start":I
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p2, p4}, Lio/netty/util/AsciiString;->equalsIgnoreCase(CC)Z

    move-result p2

    if-nez p2, :cond_3

    .line 859
    return v1

    .line 858
    :cond_3
    move p4, v3

    move p2, v4

    goto :goto_0

    .line 862
    .end local v3    # "start":I
    .end local v4    # "thisStart":I
    .restart local p2    # "thisStart":I
    .restart local p4    # "start":I
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 852
    .end local v2    # "thisEnd":I
    :cond_5
    :goto_1
    return v1

    .line 849
    :cond_6
    :goto_2
    return v1
.end method

.method public replace(CC)Lio/netty/util/AsciiString;
    .locals 9
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .line 873
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 874
    return-object p0

    .line 877
    :cond_0
    invoke-static {p1}, Lio/netty/util/AsciiString;->c2b0(C)B

    move-result v0

    .line 878
    .local v0, "oldCharAsByte":B
    invoke-static {p2}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v1

    .line 879
    .local v1, "newCharAsByte":B
    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    iget v3, p0, Lio/netty/util/AsciiString;->length:I

    add-int/2addr v2, v3

    .line 880
    .local v2, "len":I
    iget v3, p0, Lio/netty/util/AsciiString;->offset:I

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 881
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v4, v4, v3

    if-ne v4, v0, :cond_3

    .line 882
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v4

    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v4

    .line 883
    .local v4, "buffer":[B
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    iget v6, p0, Lio/netty/util/AsciiString;->offset:I

    iget v7, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v7, v3, v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iget v5, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v5, v3, v5

    aput-byte v1, v4, v5

    .line 885
    add-int/lit8 v3, v3, 0x1

    .line 886
    :goto_1
    if-ge v3, v2, :cond_2

    .line 887
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v5, v5, v3

    .line 888
    .local v5, "oldValue":B
    iget v6, p0, Lio/netty/util/AsciiString;->offset:I

    sub-int v6, v3, v6

    if-eq v5, v0, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    aput-byte v7, v4, v6

    .line 886
    .end local v5    # "oldValue":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 890
    :cond_2
    new-instance v5, Lio/netty/util/AsciiString;

    invoke-direct {v5, v4, v8}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v5

    .line 880
    .end local v4    # "buffer":[B
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 893
    .end local v3    # "i":I
    :cond_4
    return-object p0
.end method

.method public split(C)[Lio/netty/util/AsciiString;
    .locals 9
    .param p1, "delim"    # C

    .line 1087
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1089
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lio/netty/util/AsciiString;>;"
    const/4 v1, 0x0

    .line 1090
    .local v1, "start":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    .line 1091
    .local v2, "length":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_2

    .line 1092
    invoke-virtual {p0, v3}, Lio/netty/util/AsciiString;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1093
    if-ne v1, v3, :cond_0

    .line 1094
    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1096
    :cond_0
    new-instance v5, Lio/netty/util/AsciiString;

    iget-object v6, p0, Lio/netty/util/AsciiString;->value:[B

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v7

    add-int/2addr v7, v1

    sub-int v8, v3, v1

    invoke-direct {v5, v6, v7, v8, v4}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    :goto_1
    add-int/lit8 v1, v3, 0x1

    .line 1091
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1102
    .end local v3    # "i":I
    :cond_2
    if-nez v1, :cond_3

    .line 1103
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1105
    :cond_3
    if-eq v1, v2, :cond_4

    .line 1107
    new-instance v3, Lio/netty/util/AsciiString;

    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v7, v2, v1

    invoke-direct {v3, v5, v6, v7, v4}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1110
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 1111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/AsciiString;

    invoke-virtual {v4}, Lio/netty/util/AsciiString;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1112
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1110
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1120
    .end local v3    # "i":I
    :cond_5
    :goto_3
    sget-object v3, Lio/netty/util/internal/EmptyArrays;->EMPTY_ASCII_STRINGS:[Lio/netty/util/AsciiString;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/netty/util/AsciiString;

    return-object v3
.end method

.method public split(Ljava/lang/String;I)[Lio/netty/util/AsciiString;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 1080
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/AsciiString;->toAsciiStringArray([Ljava/lang/String;)[Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/AsciiString;->startsWith(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 918
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lio/netty/util/AsciiString;->regionMatches(ILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(I)Lio/netty/util/AsciiString;
    .locals 1
    .param p1, "start"    # I

    .line 615
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/AsciiString;->subSequence(II)Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Lio/netty/util/AsciiString;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 627
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(IIZ)Lio/netty/util/AsciiString;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "copy"    # Z

    .line 640
    sub-int v0, p2, p1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 645
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 646
    return-object p0

    .line 649
    :cond_0
    if-ne p2, p1, :cond_1

    .line 650
    sget-object v0, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    return-object v0

    .line 653
    :cond_1
    new-instance v0, Lio/netty/util/AsciiString;

    iget-object v1, p0, Lio/netty/util/AsciiString;->value:[B

    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3, p3}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    return-object v0

    .line 641
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= end ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 642
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

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

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lio/netty/util/AsciiString;->subSequence(II)Lio/netty/util/AsciiString;

    move-result-object p1

    return-object p1
.end method

.method public toByteArray()[B
    .locals 2

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/AsciiString;->toByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(II)[B
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 402
    iget-object v0, p0, Lio/netty/util/AsciiString;->value:[B

    iget v1, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public toCharArray()[C
    .locals 2

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/AsciiString;->toCharArray(II)[C

    move-result-object v0

    return-object v0
.end method

.method public toCharArray(II)[C
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 569
    sub-int v0, p2, p1

    .line 570
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 571
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_CHARS:[C

    return-object v1

    .line 574
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 579
    new-array v1, v0, [C

    .line 580
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p1

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 581
    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Lio/netty/util/AsciiString;->b2c(B)C

    move-result v4

    aput-char v4, v1, v2

    .line 580
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    return-object v1

    .line 575
    .end local v1    # "buffer":[C
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: 0 <= start("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= srcIdx + length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= srcLen("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toLowerCase()Lio/netty/util/AsciiString;
    .locals 7

    .line 927
    const/4 v0, 0x1

    .line 929
    .local v0, "lowercased":Z
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v1, v2

    .line 930
    .local v1, "len":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 931
    iget-object v3, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v3, v3, v2

    .line 932
    .local v3, "b":B
    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    .line 933
    const/4 v0, 0x0

    .line 934
    goto :goto_1

    .line 930
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 940
    return-object p0

    .line 943
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v3

    .line 944
    .local v3, "newValue":[B
    const/4 v2, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v4

    .local v4, "j":I
    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 945
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v5, v5, v4

    invoke-static {v5}, Lio/netty/util/AsciiString;->toLowerCase(B)B

    move-result v5

    aput-byte v5, v3, v2

    .line 944
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 948
    :cond_3
    new-instance v5, Lio/netty/util/AsciiString;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1159
    iget-object v0, p0, Lio/netty/util/AsciiString;->string:Ljava/lang/String;

    .line 1160
    .local v0, "cache":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1161
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/netty/util/AsciiString;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    iput-object v0, p0, Lio/netty/util/AsciiString;->string:Ljava/lang/String;

    .line 1164
    :cond_0
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .line 1172
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/AsciiString;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1179
    sub-int v0, p2, p1

    .line 1180
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 1181
    const-string v1, ""

    return-object v1

    .line 1184
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1190
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/netty/util/AsciiString;->value:[B

    iget v3, p0, Lio/netty/util/AsciiString;->offset:I

    add-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 1191
    .local v1, "str":Ljava/lang/String;
    return-object v1

    .line 1185
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: 0 <= start("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= srcIdx + length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= srcLen("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1186
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toUpperCase()Lio/netty/util/AsciiString;
    .locals 7

    .line 957
    const/4 v0, 0x1

    .line 959
    .local v0, "uppercased":Z
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v1, v2

    .line 960
    .local v1, "len":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 961
    iget-object v3, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v3, v3, v2

    .line 962
    .local v3, "b":B
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    .line 963
    const/4 v0, 0x0

    .line 964
    goto :goto_1

    .line 960
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 970
    return-object p0

    .line 973
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v3

    .line 974
    .local v3, "newValue":[B
    const/4 v2, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v4

    .local v4, "j":I
    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 975
    iget-object v5, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v5, v5, v4

    invoke-static {v5}, Lio/netty/util/AsciiString;->toUpperCase(B)B

    move-result v5

    aput-byte v5, v3, v2

    .line 974
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 978
    :cond_3
    new-instance v5, Lio/netty/util/AsciiString;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v5
.end method

.method public trim()Lio/netty/util/AsciiString;
    .locals 7

    .line 1016
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v0

    .local v0, "start":I
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 1017
    .local v1, "last":I
    move v2, v1

    .line 1018
    .local v2, "end":I
    :goto_0
    const/16 v3, 0x20

    if-gt v0, v2, :cond_0

    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v4, v4, v0

    if-gt v4, v3, :cond_0

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    :goto_1
    if-lt v2, v0, :cond_1

    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    aget-byte v4, v4, v2

    if-gt v4, v3, :cond_1

    .line 1022
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1024
    :cond_1
    if-nez v0, :cond_2

    if-ne v2, v1, :cond_2

    .line 1025
    return-object p0

    .line 1027
    :cond_2
    new-instance v3, Lio/netty/util/AsciiString;

    iget-object v4, p0, Lio/netty/util/AsciiString;->value:[B

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    return-object v3
.end method
