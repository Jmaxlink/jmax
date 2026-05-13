.class final Lio/netty/handler/codec/http2/HpackHuffmanEncoder;
.super Ljava/lang/Object;
.source "HpackHuffmanEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;,
        Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;
    }
.end annotation


# instance fields
.field private final codes:[I

.field private final encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

.field private final encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

.field private final lengths:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    sget-object v0, Lio/netty/handler/codec/http2/HpackUtil;->HUFFMAN_CODES:[I

    sget-object v1, Lio/netty/handler/codec/http2/HpackUtil;->HUFFMAN_CODE_LENGTHS:[B

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;-><init>([I[B)V

    .line 49
    return-void
.end method

.method private constructor <init>([I[B)V
    .locals 2
    .param p1, "codes"    # [I
    .param p2, "lengths"    # [B

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;-><init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;Lio/netty/handler/codec/http2/HpackHuffmanEncoder$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    .line 45
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;-><init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;Lio/netty/handler/codec/http2/HpackHuffmanEncoder$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    .line 58
    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->codes:[I

    .line 59
    iput-object p2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    .line 60
    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)[B
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    .line 40
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)[I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    .line 40
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->codes:[I

    return-object v0
.end method

.method private encodeSlowPath(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "data"    # Ljava/lang/CharSequence;

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "current":J
    const/4 v2, 0x0

    .line 89
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0xff

    if-ge v3, v4, :cond_1

    .line 90
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v4

    and-int/2addr v4, v5

    .line 91
    .local v4, "b":I
    iget-object v5, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->codes:[I

    aget v5, v5, v4

    .line 92
    .local v5, "code":I
    iget-object v6, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    aget-byte v6, v6, v4

    .line 94
    .local v6, "nbits":I
    shl-long/2addr v0, v6

    .line 95
    int-to-long v7, v5

    or-long/2addr v0, v7

    .line 96
    add-int/2addr v2, v6

    .line 98
    :goto_1
    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    .line 99
    add-int/lit8 v2, v2, -0x8

    .line 100
    shr-long v7, v0, v2

    long-to-int v7, v7

    invoke-virtual {p1, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 89
    .end local v4    # "b":I
    .end local v5    # "code":I
    .end local v6    # "nbits":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_1
    if-lez v2, :cond_2

    .line 105
    rsub-int/lit8 v3, v2, 0x8

    shl-long/2addr v0, v3

    .line 106
    ushr-int v3, v5, v2

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 107
    long-to-int v3, v0

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 109
    :cond_2
    return-void
.end method

.method private getEncodedLengthSlowPath(Ljava/lang/CharSequence;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/CharSequence;

    .line 134
    const-wide/16 v0, 0x0

    .line 135
    .local v0, "len":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 136
    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_0
    const-wide/16 v2, 0x7

    add-long/2addr v2, v0

    const/4 v4, 0x3

    shr-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "data"    # Ljava/lang/CharSequence;

    .line 69
    const-string v0, "out"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    .line 73
    .local v0, "string":Lio/netty/util/AsciiString;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    iput-object p1, v1, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->out:Lio/netty/buffer/ByteBuf;

    .line 74
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-virtual {v0, v1}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->end()V

    .line 79
    nop

    .line 80
    .end local v0    # "string":Lio/netty/util/AsciiString;
    goto :goto_2

    .line 78
    .restart local v0    # "string":Lio/netty/util/AsciiString;
    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->end()V

    .line 79
    throw v1

    .line 81
    .end local v0    # "string":Lio/netty/util/AsciiString;
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeSlowPath(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    .line 83
    :goto_2
    return-void
.end method

.method getEncodedLength(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "data"    # Ljava/lang/CharSequence;

    .line 118
    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p1

    check-cast v0, Lio/netty/util/AsciiString;

    .line 121
    .local v0, "string":Lio/netty/util/AsciiString;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;->reset()V

    .line 122
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    invoke-virtual {v0, v1}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    .line 123
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 126
    const/4 v2, -0x1

    return v2

    .line 129
    .end local v0    # "string":Lio/netty/util/AsciiString;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->getEncodedLengthSlowPath(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method
