.class final Lio/netty/handler/codec/compression/Bzip2BlockCompressor;
.super Ljava/lang/Object;
.source "Bzip2BlockCompressor.java"


# instance fields
.field private final block:[B

.field private blockLength:I

.field private final blockLengthLimit:I

.field private final blockValuesPresent:[Z

.field private final bwtBlock:[I

.field private final crc:Lio/netty/handler/codec/compression/Crc32;

.field private rleCurrentValue:I

.field private rleLength:I

.field private final writeProcessor:Lio/netty/util/ByteProcessor;

.field private final writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/Bzip2BitWriter;I)V
    .locals 1
    .param p1, "writer"    # Lio/netty/handler/codec/compression/Bzip2BitWriter;
    .param p2, "blockSize"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor$1;-><init>(Lio/netty/handler/codec/compression/Bzip2BlockCompressor;)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writeProcessor:Lio/netty/util/ByteProcessor;

    .line 53
    new-instance v0, Lio/netty/handler/codec/compression/Crc32;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Crc32;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    .line 74
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockValuesPresent:[Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleCurrentValue:I

    .line 97
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 100
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->block:[B

    .line 101
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->bwtBlock:[I

    .line 102
    add-int/lit8 v0, p2, -0x6

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLengthLimit:I

    .line 103
    return-void
.end method

.method private writeRun(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "runLength"    # I

    .line 142
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    .line 143
    .local v0, "blockLength":I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->block:[B

    .line 145
    .local v1, "block":[B
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockValuesPresent:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 146
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v2, p1, p2}, Lio/netty/handler/codec/compression/Crc32;->updateCRC(II)V

    .line 148
    int-to-byte v2, p1

    .line 149
    .local v2, "byteValue":B
    packed-switch p2, :pswitch_data_0

    .line 166
    add-int/lit8 p2, p2, -0x4

    .line 167
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockValuesPresent:[Z

    aput-boolean v3, v4, p2

    .line 168
    aput-byte v2, v1, v0

    .line 169
    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v3

    .line 170
    add-int/lit8 v3, v0, 0x2

    aput-byte v2, v1, v3

    .line 171
    add-int/lit8 v3, v0, 0x3

    aput-byte v2, v1, v3

    .line 172
    add-int/lit8 v3, v0, 0x4

    int-to-byte v4, p2

    aput-byte v4, v1, v3

    .line 173
    add-int/lit8 v3, v0, 0x5

    iput v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    goto :goto_0

    .line 160
    :pswitch_0
    aput-byte v2, v1, v0

    .line 161
    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v3

    .line 162
    add-int/lit8 v3, v0, 0x2

    aput-byte v2, v1, v3

    .line 163
    add-int/lit8 v3, v0, 0x3

    iput v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    .line 164
    goto :goto_0

    .line 155
    :pswitch_1
    aput-byte v2, v1, v0

    .line 156
    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v3

    .line 157
    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    .line 158
    goto :goto_0

    .line 151
    :pswitch_2
    aput-byte v2, v1, v0

    .line 152
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    .line 153
    nop

    .line 176
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeSymbolMap(Lio/netty/buffer/ByteBuf;)V
    .locals 8
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 109
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 111
    .local v0, "writer":Lio/netty/handler/codec/compression/Bzip2BitWriter;
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockValuesPresent:[Z

    .line 112
    .local v1, "blockValuesPresent":[Z
    const/16 v2, 0x10

    new-array v3, v2, [Z

    .line 114
    .local v3, "condensedInUse":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 115
    const/4 v5, 0x0

    .local v5, "j":I
    shl-int/lit8 v6, v4, 0x4

    .local v6, "k":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 116
    aget-boolean v7, v1, v6

    if-eqz v7, :cond_0

    .line 117
    const/4 v7, 0x1

    aput-boolean v7, v3, v4

    .line 118
    goto :goto_2

    .line 115
    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 114
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "i":I
    :cond_2
    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_3

    aget-boolean v6, v3, v5

    .line 124
    .local v6, "isCondensedInUse":Z
    invoke-virtual {v0, p1, v6}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    .line 123
    .end local v6    # "isCondensedInUse":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 127
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 128
    aget-boolean v5, v3, v4

    if-eqz v5, :cond_4

    .line 129
    const/4 v5, 0x0

    .restart local v5    # "j":I
    shl-int/lit8 v6, v4, 0x4

    .local v6, "k":I
    :goto_5
    if-ge v5, v2, :cond_4

    .line 130
    aget-boolean v7, v1, v6

    invoke-virtual {v0, p1, v7}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    .line 129
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 127
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 134
    .end local v4    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method availableSize()I
    .locals 2

    .line 269
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    if-nez v0, :cond_0

    .line 270
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLengthLimit:I

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 272
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLengthLimit:I

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method close(Lio/netty/buffer/ByteBuf;)V
    .locals 11
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 227
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    if-lez v0, :cond_0

    .line 228
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleCurrentValue:I

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writeRun(II)V

    .line 232
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->block:[B

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 235
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->block:[B

    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->bwtBlock:[I

    iget v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    invoke-direct {v0, v1, v2, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;-><init>([B[II)V

    .line 236
    .local v0, "divSufSort":Lio/netty/handler/codec/compression/Bzip2DivSufSort;
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->bwt()I

    move-result v1

    .line 238
    .local v1, "bwtStartPointer":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 241
    .local v2, "writer":Lio/netty/handler/codec/compression/Bzip2BitWriter;
    const-wide/32 v4, 0x314159

    const/16 v6, 0x18

    invoke-virtual {v2, p1, v6, v4, v5}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 242
    const-wide/32 v4, 0x265359

    invoke-virtual {v2, p1, v6, v4, v5}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 243
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v4}, Lio/netty/handler/codec/compression/Crc32;->getCRC()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeInt(Lio/netty/buffer/ByteBuf;I)V

    .line 244
    invoke-virtual {v2, p1, v3}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    .line 245
    int-to-long v3, v1

    invoke-virtual {v2, p1, v6, v3, v4}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 248
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writeSymbolMap(Lio/netty/buffer/ByteBuf;)V

    .line 251
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;

    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->bwtBlock:[I

    iget v5, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    iget-object v6, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockValuesPresent:[Z

    invoke-direct {v3, v4, v5, v6}, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;-><init>([II[Z)V

    .line 253
    .local v3, "mtfEncoder":Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->encode()V

    .line 256
    new-instance v10, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;

    .line 257
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfBlock()[C

    move-result-object v6

    .line 258
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfLength()I

    move-result v7

    .line 259
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfAlphabetSize()I

    move-result v8

    .line 260
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2MTFAndRLE2StageEncoder;->mtfSymbolFrequencies()[I

    move-result-object v9

    move-object v4, v10

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;-><init>(Lio/netty/handler/codec/compression/Bzip2BitWriter;[CII[I)V

    .line 261
    .local v4, "huffmanEncoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;
    invoke-virtual {v4, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 262
    return-void
.end method

.method crc()I
    .locals 1

    .line 296
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32;->getCRC()I

    move-result v0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 288
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    if-nez v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFull()Z
    .locals 2

    .line 280
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLengthLimit:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method write(Lio/netty/buffer/ByteBuf;II)I
    .locals 2
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 218
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writeProcessor:Lio/netty/util/ByteProcessor;

    invoke-virtual {p1, p2, p3, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    .line 219
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    sub-int v1, v0, p2

    :goto_0
    return v1
.end method

.method write(I)Z
    .locals 6
    .param p1, "value"    # I

    .line 184
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLength:I

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->blockLengthLimit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 185
    return v2

    .line 187
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleCurrentValue:I

    .line 188
    .local v0, "rleCurrentValue":I
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    .line 190
    .local v1, "rleLength":I
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 191
    iput p1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleCurrentValue:I

    .line 192
    iput v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    goto :goto_0

    .line 193
    :cond_1
    if-eq v0, p1, :cond_2

    .line 195
    and-int/lit16 v2, v0, 0xff

    invoke-direct {p0, v2, v1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writeRun(II)V

    .line 196
    iput p1, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleCurrentValue:I

    .line 197
    iput v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    goto :goto_0

    .line 199
    :cond_2
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_3

    .line 200
    and-int/lit16 v4, v0, 0xff

    const/16 v5, 0xff

    invoke-direct {p0, v4, v5}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->writeRun(II)V

    .line 201
    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    goto :goto_0

    .line 203
    :cond_3
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->rleLength:I

    .line 206
    :goto_0
    return v3
.end method
