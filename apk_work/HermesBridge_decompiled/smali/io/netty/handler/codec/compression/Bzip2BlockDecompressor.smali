.class final Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
.super Ljava/lang/Object;
.source "Bzip2BlockDecompressor.java"


# instance fields
.field private final blockCRC:I

.field private final blockRandomised:Z

.field private final bwtBlock:[B

.field private bwtBlockLength:I

.field private final bwtByteCounts:[I

.field private bwtBytesDecoded:I

.field private bwtCurrentMergedPointer:I

.field private bwtMergedPointers:[I

.field private final bwtStartPointer:I

.field private final crc:Lio/netty/handler/codec/compression/Crc32;

.field huffmanEndOfBlockSymbol:I

.field huffmanInUse16:I

.field final huffmanSymbolMap:[B

.field private mtfValue:I

.field private randomCount:I

.field private randomIndex:I

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field private repeatCount:I

.field private repeatIncrement:I

.field private rleAccumulator:I

.field private rleLastDecodedByte:I

.field private rleRepeat:I

.field private final symbolMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;


# direct methods
.method constructor <init>(IIZILio/netty/handler/codec/compression/Bzip2BitReader;)V
    .locals 2
    .param p1, "blockSize"    # I
    .param p2, "blockCRC"    # I
    .param p3, "blockRandomised"    # Z
    .param p4, "bwtStartPointer"    # I
    .param p5, "reader"    # Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/netty/handler/codec/compression/Crc32;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Crc32;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    .line 73
    const/16 v0, 0x100

    new-array v1, v0, [B

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    .line 80
    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtByteCounts:[I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2Rand;->rNums(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    .line 151
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->symbolMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    .line 155
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatIncrement:I

    .line 161
    new-array v0, p1, [B

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    .line 163
    iput p2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockCRC:I

    .line 164
    iput-boolean p3, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockRandomised:Z

    .line 165
    iput p4, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtStartPointer:I

    .line 167
    iput-object p5, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 168
    return-void
.end method

.method private decodeNextBWTByte()I
    .locals 4

    .line 318
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtCurrentMergedPointer:I

    .line 319
    .local v0, "mergedPointer":I
    and-int/lit16 v1, v0, 0xff

    .line 320
    .local v1, "nextDecodedByte":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtMergedPointers:[I

    ushr-int/lit8 v3, v0, 0x8

    aget v2, v2, v3

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtCurrentMergedPointer:I

    .line 322
    iget-boolean v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockRandomised:Z

    if-eqz v2, :cond_0

    .line 323
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    if-nez v2, :cond_0

    .line 324
    xor-int/lit8 v1, v1, 0x1

    .line 325
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x200

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomIndex:I

    .line 326
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomIndex:I

    invoke-static {v2}, Lio/netty/handler/codec/compression/Bzip2Rand;->rNums(I)I

    move-result v2

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    .line 329
    :cond_0
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBytesDecoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBytesDecoded:I

    .line 331
    return v1
.end method

.method private initialiseInverseBWT()V
    .locals 9

    .line 248
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtStartPointer:I

    .line 249
    .local v0, "bwtStartPointer":I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    .line 250
    .local v1, "bwtBlock":[B
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    new-array v2, v2, [I

    .line 251
    .local v2, "bwtMergedPointers":[I
    const/16 v3, 0x100

    new-array v3, v3, [I

    .line 253
    .local v3, "characterBase":[I
    if-ltz v0, :cond_2

    iget v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    if-ge v0, v4, :cond_2

    .line 258
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtByteCounts:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xff

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    if-gt v4, v7, :cond_0

    .line 260
    aget v5, v3, v4

    add-int/lit8 v6, v4, -0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget v5, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    if-ge v4, v5, :cond_1

    .line 268
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    .line 269
    .local v5, "value":I
    aget v6, v3, v5

    add-int/lit8 v8, v6, 0x1

    aput v8, v3, v5

    shl-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v5

    aput v8, v2, v6

    .line 267
    .end local v5    # "value":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 272
    .end local v4    # "i":I
    :cond_1
    iput-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtMergedPointers:[I

    .line 273
    aget v4, v2, v0

    iput v4, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtCurrentMergedPointer:I

    .line 274
    return-void

    .line 254
    :cond_2
    new-instance v4, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "start pointer invalid"

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public blockLength()I
    .locals 1

    .line 335
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    return v0
.end method

.method checkCRC()I
    .locals 3

    .line 344
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32;->getCRC()I

    move-result v0

    .line 345
    .local v0, "computedBlockCRC":I
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockCRC:I

    if-ne v1, v0, :cond_0

    .line 348
    return v0

    .line 346
    :cond_0
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "block CRC error"

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method decodeHuffmanData(Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;)Z
    .locals 18
    .param p1, "huffmanDecoder"    # Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 176
    .local v1, "reader":Lio/netty/handler/codec/compression/Bzip2BitReader;
    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    .line 177
    .local v2, "bwtBlock":[B
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    .line 178
    .local v3, "huffmanSymbolMap":[B
    iget-object v4, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    array-length v4, v4

    .line 179
    .local v4, "streamBlockSize":I
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanEndOfBlockSymbol:I

    .line 180
    .local v5, "huffmanEndOfBlockSymbol":I
    iget-object v6, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtByteCounts:[I

    .line 181
    .local v6, "bwtByteCounts":[I
    iget-object v7, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->symbolMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    .line 183
    .local v7, "symbolMTF":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    iget v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    .line 184
    .local v8, "bwtBlockLength":I
    iget v9, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatCount:I

    .line 185
    .local v9, "repeatCount":I
    iget v10, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatIncrement:I

    .line 186
    .local v10, "repeatIncrement":I
    iget v11, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->mtfValue:I

    .line 189
    .local v11, "mtfValue":I
    :goto_0
    const/16 v12, 0x17

    invoke-virtual {v1, v12}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 190
    iput v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    .line 191
    iput v9, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatCount:I

    .line 192
    iput v10, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatIncrement:I

    .line 193
    iput v11, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->mtfValue:I

    .line 194
    const/4 v12, 0x0

    return v12

    .line 196
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->nextSymbol()I

    move-result v12

    .line 198
    .local v12, "nextSymbol":I
    if-nez v12, :cond_1

    .line 199
    add-int/2addr v9, v10

    .line 200
    shl-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 201
    :cond_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 202
    shl-int/lit8 v13, v10, 0x1

    add-int/2addr v9, v13

    .line 203
    shl-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 205
    :cond_2
    const-string v14, "block exceeds declared block size"

    if-lez v9, :cond_5

    .line 206
    add-int v15, v8, v9

    if-gt v15, v4, :cond_4

    .line 209
    aget-byte v15, v3, v11

    .line 210
    .local v15, "nextByte":B
    and-int/lit16 v13, v15, 0xff

    aget v17, v6, v13

    add-int v17, v17, v9

    aput v17, v6, v13

    .line 211
    :goto_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    .line 212
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "bwtBlockLength":I
    .local v13, "bwtBlockLength":I
    aput-byte v15, v2, v8

    move v8, v13

    goto :goto_1

    .line 215
    .end local v13    # "bwtBlockLength":I
    .restart local v8    # "bwtBlockLength":I
    :cond_3
    const/4 v9, 0x0

    .line 216
    const/4 v10, 0x1

    goto :goto_2

    .line 207
    .end local v15    # "nextByte":B
    :cond_4
    new-instance v13, Lio/netty/handler/codec/compression/DecompressionException;

    invoke-direct {v13, v14}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 219
    :cond_5
    :goto_2
    if-ne v12, v5, :cond_7

    .line 220
    nop

    .line 234
    .end local v12    # "nextSymbol":I
    const v12, 0xdbba0

    if-gt v8, v12, :cond_6

    .line 239
    iput v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    .line 240
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->initialiseInverseBWT()V

    .line 241
    const/4 v12, 0x1

    return v12

    .line 235
    :cond_6
    new-instance v13, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "block length exceeds max block length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 223
    .restart local v12    # "nextSymbol":I
    :cond_7
    if-ge v8, v4, :cond_8

    .line 227
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v7, v13}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->indexToFront(I)B

    move-result v13

    and-int/lit16 v11, v13, 0xff

    .line 229
    aget-byte v13, v3, v11

    .line 230
    .local v13, "nextByte":B
    and-int/lit16 v14, v13, 0xff

    aget v15, v6, v14

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v6, v14

    .line 231
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "bwtBlockLength":I
    .local v14, "bwtBlockLength":I
    aput-byte v13, v2, v8

    move v8, v14

    .line 233
    .end local v12    # "nextSymbol":I
    .end local v13    # "nextByte":B
    .end local v14    # "bwtBlockLength":I
    .restart local v8    # "bwtBlockLength":I
    :goto_3
    goto/16 :goto_0

    .line 224
    .restart local v12    # "nextSymbol":I
    :cond_8
    new-instance v13, Lio/netty/handler/codec/compression/DecompressionException;

    invoke-direct {v13, v14}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public read()I
    .locals 4

    .line 282
    nop

    :goto_0
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 283
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBytesDecoded:I

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    if-ne v0, v2, :cond_0

    .line 284
    const/4 v0, -0x1

    return v0

    .line 287
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeNextBWTByte()I

    move-result v0

    .line 288
    .local v0, "nextByte":I
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    if-eq v0, v2, :cond_1

    .line 290
    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    .line 291
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    .line 292
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    .line 293
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/compression/Crc32;->updateCRC(I)V

    goto :goto_1

    .line 295
    :cond_1
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 297
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeNextBWTByte()I

    move-result v2

    add-int/2addr v2, v1

    .line 298
    .local v2, "rleRepeat":I
    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    .line 300
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v1, v0, v2}, Lio/netty/handler/codec/compression/Crc32;->updateCRC(II)V

    .line 301
    .end local v2    # "rleRepeat":I
    goto :goto_1

    .line 302
    :cond_2
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    .line 303
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/compression/Crc32;->updateCRC(I)V

    .line 306
    .end local v0    # "nextByte":I
    :goto_1
    goto :goto_0

    .line 307
    :cond_3
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    .line 309
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    return v0
.end method
