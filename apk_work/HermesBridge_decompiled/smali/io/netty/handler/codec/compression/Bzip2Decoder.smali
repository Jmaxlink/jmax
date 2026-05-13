.class public Lio/netty/handler/codec/compression/Bzip2Decoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "Bzip2Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2Decoder$State;
    }
.end annotation


# instance fields
.field private blockCRC:I

.field private blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

.field private blockSize:I

.field private currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

.field private huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field private streamCRC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 60
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 65
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BitReader;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 17
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v9, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 99
    .local v9, "reader":Lio/netty/handler/codec/compression/Bzip2BitReader;
    invoke-virtual {v9, v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->setByteBuf(Lio/netty/buffer/ByteBuf;)V

    .line 102
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$1;->$SwitchMap$io$netty$handler$codec$compression$Bzip2Decoder$State:[I

    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/16 v3, 0x18

    const/16 v12, 0x10

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    .line 332
    move-object/from16 v10, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 329
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 330
    return-void

    .line 104
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 105
    return-void

    .line 107
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v0

    .line 108
    .local v0, "magicNumber":I
    const v4, 0x425a68

    if-ne v0, v4, :cond_23

    .line 112
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 113
    .local v4, "blockSize":I
    if-lt v4, v13, :cond_22

    const/16 v5, 0x9

    if-gt v4, v5, :cond_22

    .line 116
    const v5, 0x186a0

    mul-int/2addr v5, v4

    iput v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    .line 118
    iput v10, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    .line 119
    sget-object v5, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 122
    .end local v0    # "magicNumber":I
    .end local v4    # "blockSize":I
    :pswitch_2
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBytes(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    return-void

    .line 126
    :cond_2
    invoke-virtual {v9, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v0

    .line 127
    .local v0, "magic1":I
    invoke-virtual {v9, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v4

    .line 128
    .local v4, "magic2":I
    const v5, 0x177245

    if-ne v0, v5, :cond_4

    const v5, 0x385090

    if-ne v4, v5, :cond_4

    .line 130
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    move-result v3

    .line 131
    .local v3, "storedCombinedCRC":I
    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    if-ne v3, v5, :cond_3

    .line 134
    sget-object v5, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 135
    goto :goto_0

    .line 132
    :cond_3
    new-instance v5, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v6, "stream CRC error"

    invoke-direct {v5, v6}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    .end local v3    # "storedCombinedCRC":I
    :cond_4
    const v5, 0x314159

    if-ne v0, v5, :cond_21

    const v5, 0x265359

    if-ne v4, v5, :cond_21

    .line 140
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    move-result v5

    iput v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    .line 141
    sget-object v5, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 144
    .end local v0    # "magic1":I
    .end local v4    # "magic2":I
    :pswitch_3
    const/16 v0, 0x19

    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 145
    return-void

    .line 147
    :cond_5
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v0

    .line 148
    .local v0, "blockRandomised":Z
    invoke-virtual {v9, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v14

    .line 150
    .local v14, "bwtStartPointer":I
    new-instance v15, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    move-object v3, v15

    move v6, v0

    move v7, v14

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;-><init>(IIZILio/netty/handler/codec/compression/Bzip2BitReader;)V

    iput-object v15, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 152
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_MAP:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 155
    .end local v0    # "blockRandomised":Z
    .end local v14    # "bwtStartPointer":I
    :pswitch_4
    invoke-virtual {v9, v12}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 156
    return-void

    .line 158
    :cond_6
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    invoke-virtual {v9, v12}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v3

    iput v3, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    .line 159
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_BITMAPS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 162
    :pswitch_5
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 163
    .local v0, "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    .line 164
    .local v3, "inUse16":I
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 165
    .local v4, "bitNumber":I
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    .line 167
    .local v5, "huffmanSymbolMap":[B
    mul-int/lit8 v6, v4, 0x10

    const/4 v7, 0x3

    add-int/2addr v6, v7

    invoke-virtual {v9, v6}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 168
    return-void

    .line 171
    :cond_7
    const/4 v6, 0x0

    .line 172
    .local v6, "huffmanSymbolCount":I
    if-lez v4, :cond_a

    .line 173
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_a

    .line 174
    const v14, 0x8000

    ushr-int/2addr v14, v8

    and-int/2addr v14, v3

    if-eqz v14, :cond_9

    .line 175
    const/4 v14, 0x0

    .local v14, "j":I
    shl-int/lit8 v15, v8, 0x4

    .local v15, "k":I
    :goto_2
    if-ge v14, v12, :cond_9

    .line 176
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 177
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "huffmanSymbolCount":I
    .local v16, "huffmanSymbolCount":I
    int-to-byte v12, v15

    aput-byte v12, v5, v6

    move/from16 v6, v16

    .line 175
    .end local v16    # "huffmanSymbolCount":I
    .restart local v6    # "huffmanSymbolCount":I
    :cond_8
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0x10

    goto :goto_2

    .line 173
    .end local v14    # "j":I
    .end local v15    # "k":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/16 v12, 0x10

    goto :goto_1

    .line 183
    .end local v8    # "i":I
    :cond_a
    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanEndOfBlockSymbol:I

    .line 185
    invoke-virtual {v9, v7}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v7

    .line 186
    .local v7, "totalTables":I
    const/4 v8, 0x2

    if-lt v7, v8, :cond_20

    if-gt v7, v11, :cond_20

    .line 189
    add-int/lit8 v8, v6, 0x2

    .line 190
    .local v8, "alphaSize":I
    const/16 v12, 0x102

    if-gt v8, v12, :cond_1f

    .line 193
    new-instance v12, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    invoke-direct {v12, v9, v7, v8}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;-><init>(Lio/netty/handler/codec/compression/Bzip2BitReader;II)V

    iput-object v12, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 194
    sget-object v12, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS_NUMBER:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v12, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 197
    .end local v0    # "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    .end local v3    # "inUse16":I
    .end local v4    # "bitNumber":I
    .end local v5    # "huffmanSymbolMap":[B
    .end local v6    # "huffmanSymbolCount":I
    .end local v7    # "totalTables":I
    .end local v8    # "alphaSize":I
    :pswitch_6
    const/16 v0, 0xf

    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 198
    return-void

    .line 200
    :cond_b
    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v0

    .line 201
    .local v0, "totalSelectors":I
    if-lt v0, v13, :cond_1e

    const/16 v3, 0x4652

    if-gt v0, v3, :cond_1e

    .line 204
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    new-array v4, v0, [B

    iput-object v4, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    .line 206
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 209
    .end local v0    # "totalSelectors":I
    :pswitch_7
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 210
    .local v0, "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    .line 211
    .local v3, "selectors":[B
    array-length v4, v3

    .line 212
    .local v4, "totalSelectors":I
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    .line 216
    .local v5, "tableMtf":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    .line 217
    .local v6, "currSelector":I
    :goto_3
    if-ge v6, v4, :cond_e

    .line 218
    invoke-virtual {v9, v11}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 220
    iput v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    .line 221
    return-void

    .line 223
    :cond_c
    const/4 v7, 0x0

    .line 224
    .local v7, "index":I
    :goto_4
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 225
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 227
    :cond_d
    invoke-virtual {v5, v7}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->indexToFront(I)B

    move-result v8

    aput-byte v8, v3, v6

    .line 217
    .end local v7    # "index":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 230
    :cond_e
    sget-object v7, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_LENGTH:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v7, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 233
    .end local v0    # "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    .end local v3    # "selectors":[B
    .end local v4    # "totalSelectors":I
    .end local v5    # "tableMtf":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    .end local v6    # "currSelector":I
    :pswitch_8
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 234
    .restart local v0    # "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->totalTables:I

    .line 235
    .local v3, "totalTables":I
    iget-object v4, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableCodeLengths:[[B

    .line 236
    .local v4, "codeLength":[[B
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->alphabetSize:I

    .line 240
    .local v5, "alphaSize":I
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 241
    .local v6, "currLength":I
    const/4 v7, 0x0

    .line 242
    .local v7, "currAlpha":I
    iget-boolean v8, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    .line 243
    .local v8, "modifyLength":Z
    const/4 v11, 0x0

    .line 244
    .local v11, "saveStateAndReturn":Z
    iget v12, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    .local v12, "currGroup":I
    :goto_5
    if-ge v12, v3, :cond_17

    .line 246
    const/4 v14, 0x5

    invoke-virtual {v9, v14}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v15

    if-nez v15, :cond_f

    .line 247
    const/4 v11, 0x1

    .line 248
    goto :goto_9

    .line 250
    :cond_f
    if-gez v6, :cond_10

    .line 251
    invoke-virtual {v9, v14}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v6

    .line 253
    :cond_10
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    :goto_6
    if-ge v7, v5, :cond_16

    .line 255
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_11

    .line 256
    const/4 v11, 0x1

    .line 257
    goto :goto_9

    .line 259
    :cond_11
    if-nez v8, :cond_13

    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_7

    .line 273
    :cond_12
    aget-object v14, v4, v12

    int-to-byte v15, v6

    aput-byte v15, v14, v7

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 260
    :cond_13
    :goto_7
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_14

    .line 261
    const/4 v8, 0x1

    .line 262
    const/4 v11, 0x1

    .line 263
    goto :goto_9

    .line 266
    :cond_14
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, -0x1

    goto :goto_8

    :cond_15
    move v14, v13

    :goto_8
    add-int/2addr v6, v14

    .line 267
    const/4 v8, 0x0

    .line 268
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_11

    .line 269
    const/4 v11, 0x1

    .line 270
    goto :goto_9

    .line 275
    :cond_16
    const/4 v6, -0x1

    .line 276
    iput v10, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    move v7, v10

    .line 277
    const/4 v8, 0x0

    .line 244
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 279
    :cond_17
    :goto_9
    if-eqz v11, :cond_18

    .line 281
    iput v12, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    .line 282
    iput v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 283
    iput v7, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    .line 284
    iput-boolean v8, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    .line 285
    return-void

    .line 289
    :cond_18
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->createHuffmanDecodingTables()V

    .line 290
    sget-object v10, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->DECODE_HUFFMAN_DATA:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v10, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 293
    .end local v0    # "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    .end local v3    # "totalTables":I
    .end local v4    # "codeLength":[[B
    .end local v5    # "alphaSize":I
    .end local v6    # "currLength":I
    .end local v7    # "currAlpha":I
    .end local v8    # "modifyLength":Z
    .end local v11    # "saveStateAndReturn":Z
    .end local v12    # "currGroup":I
    :pswitch_9
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 294
    .local v3, "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 295
    .local v4, "oldReaderIndex":I
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    invoke-virtual {v3, v0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeHuffmanData(Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;)Z

    move-result v5

    .line 296
    .local v5, "decoded":Z
    if-nez v5, :cond_19

    .line 297
    return-void

    .line 302
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    if-ne v0, v4, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 303
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->refill()V

    .line 306
    :cond_1a
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockLength()I

    move-result v6

    .line 307
    .local v6, "blockLength":I
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v6}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 310
    .local v7, "uncompressed":Lio/netty/buffer/ByteBuf;
    :goto_a
    :try_start_0
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->read()I

    move-result v0

    move v8, v0

    .local v8, "uncByte":I
    if-ltz v0, :cond_1b

    .line 311
    invoke-virtual {v7, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_a

    .line 314
    :cond_1b
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 315
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->checkCRC()I

    move-result v0

    .line 316
    .local v0, "currentBlockCRC":I
    iget v10, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    shl-int/2addr v10, v13

    iget v11, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    ushr-int/lit8 v11, v11, 0x1f

    or-int/2addr v10, v11

    xor-int/2addr v10, v0

    iput v10, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    move-object/from16 v10, p3

    :try_start_1
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    const/4 v0, 0x0

    .line 321
    .end local v7    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v8    # "uncByte":I
    .local v0, "uncompressed":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_1c

    .line 322
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 327
    :cond_1c
    return-void

    .line 321
    .end local v0    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "uncompressed":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v10, p3

    :goto_b
    if-eqz v7, :cond_1d

    .line 322
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 324
    :cond_1d
    throw v0

    .line 201
    .end local v3    # "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    .end local v4    # "oldReaderIndex":I
    .end local v5    # "decoded":Z
    .end local v6    # "blockLength":I
    .end local v7    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .local v0, "totalSelectors":I
    :cond_1e
    move-object/from16 v10, p3

    .line 202
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "incorrect selectors number"

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    .local v0, "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    .local v3, "inUse16":I
    .local v4, "bitNumber":I
    .local v5, "huffmanSymbolMap":[B
    .local v6, "huffmanSymbolCount":I
    .local v7, "totalTables":I
    .local v8, "alphaSize":I
    :cond_1f
    move-object/from16 v10, p3

    new-instance v11, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v12, "incorrect alphabet size"

    invoke-direct {v11, v12}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 186
    .end local v8    # "alphaSize":I
    :cond_20
    move-object/from16 v10, p3

    .line 187
    new-instance v8, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v11, "incorrect huffman groups number"

    invoke-direct {v8, v11}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    .end local v3    # "inUse16":I
    .end local v5    # "huffmanSymbolMap":[B
    .end local v6    # "huffmanSymbolCount":I
    .end local v7    # "totalTables":I
    .local v0, "magic1":I
    .local v4, "magic2":I
    :cond_21
    move-object/from16 v10, p3

    .line 138
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "bad block header"

    invoke-direct {v3, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .local v0, "magicNumber":I
    .local v4, "blockSize":I
    :cond_22
    move-object/from16 v10, p3

    .line 114
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "block size is invalid"

    invoke-direct {v3, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .end local v4    # "blockSize":I
    :cond_23
    move-object/from16 v10, p3

    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "Unexpected stream identifier contents. Mismatched bzip2 protocol version?"

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    sget-object v1, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
