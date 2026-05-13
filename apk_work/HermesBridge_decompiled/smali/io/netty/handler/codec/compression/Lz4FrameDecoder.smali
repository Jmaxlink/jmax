.class public Lio/netty/handler/codec/compression/Lz4FrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "Lz4FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;
    }
.end annotation


# instance fields
.field private blockType:I

.field private checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private compressedLength:I

.field private currentChecksum:I

.field private currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

.field private decompressedLength:I

.field private decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameDecoder;-><init>(Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;Ljava/util/zip/Checksum;)V
    .locals 1
    .param p1, "factory"    # Lnet/jpountz/lz4/LZ4Factory;
    .param p2, "checksum"    # Ljava/util/zip/Checksum;

    .line 145
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 64
    sget-object v0, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 146
    const-string v0, "factory"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/jpountz/lz4/LZ4Factory;

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor()Lnet/jpountz/lz4/LZ4FastDecompressor;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    .line 147
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 148
    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;Z)V
    .locals 2
    .param p1, "factory"    # Lnet/jpountz/lz4/LZ4Factory;
    .param p2, "validateChecksums"    # Z

    .line 133
    if-eqz p2, :cond_0

    new-instance v0, Lio/netty/handler/codec/compression/Lz4XXHash32;

    const v1, -0x68b84d74

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/Lz4XXHash32;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/Lz4FrameDecoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;Ljava/util/zip/Checksum;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validateChecksums"    # Z

    .line 117
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/Lz4FrameDecoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;Z)V

    .line 118
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

    .line 153
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_0
    sget-object v0, Lio/netty/handler/codec/compression/Lz4FrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State:[I

    iget-object v3, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 262
    move-object/from16 v14, p3

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_6

    .line 259
    :pswitch_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 260
    move-object/from16 v14, p3

    goto/16 :goto_2

    .line 155
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v7, 0x15

    if-ge v0, v7, :cond_0

    .line 156
    move-object/from16 v14, p3

    goto/16 :goto_2

    .line 158
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v7

    .line 159
    .local v7, "magic":J
    const-wide v9, 0x4c5a34426c6f636bL    # 6.579441740982069E59

    cmp-long v0, v7, v9

    if-nez v0, :cond_d

    .line 163
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 164
    .local v0, "token":I
    and-int/lit8 v9, v0, 0xf

    add-int/lit8 v9, v9, 0xa

    .line 165
    .local v9, "compressionLevel":I
    and-int/lit16 v10, v0, 0xf0

    .line 167
    .local v10, "blockType":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v11

    .line 168
    .local v11, "compressedLength":I
    const/high16 v12, 0x2000000

    if-ltz v11, :cond_c

    if-gt v11, v12, :cond_c

    .line 174
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    .line 175
    .local v12, "decompressedLength":I
    shl-int v13, v6, v9

    .line 176
    .local v13, "maxDecompressedLength":I
    if-ltz v12, :cond_b

    if-gt v12, v13, :cond_b

    .line 181
    if-nez v12, :cond_1

    if-nez v11, :cond_3

    :cond_1
    if-eqz v12, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    if-ne v10, v3, :cond_4

    if-ne v12, v11, :cond_3

    goto :goto_0

    .line 184
    :cond_3
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v14, "stream corrupted: compressedLength(%d) and decompressedLength(%d) mismatch"

    new-array v5, v5, [Ljava/lang/Object;

    .line 186
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    .line 184
    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 189
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    .line 190
    .local v14, "currentChecksum":I
    if-nez v12, :cond_6

    if-nez v11, :cond_6

    .line 191
    if-nez v14, :cond_5

    .line 194
    sget-object v3, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->FINISHED:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 195
    const/4 v3, 0x0

    iput-object v3, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    .line 196
    iput-object v3, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 197
    move-object/from16 v14, p3

    goto/16 :goto_2

    .line 192
    :cond_5
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "stream corrupted: checksum error"

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 200
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    iput v10, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->blockType:I

    .line 201
    iput v11, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->compressedLength:I

    .line 202
    iput v12, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressedLength:I

    .line 203
    iput v14, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentChecksum:I

    .line 205
    sget-object v15, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    iput-object v15, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 208
    .end local v0    # "token":I
    .end local v7    # "magic":J
    .end local v9    # "compressionLevel":I
    .end local v10    # "blockType":I
    .end local v11    # "compressedLength":I
    .end local v12    # "decompressedLength":I
    .end local v13    # "maxDecompressedLength":I
    .end local v14    # "currentChecksum":I
    :pswitch_2
    iget v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->blockType:I

    move v7, v0

    .line 209
    .local v7, "blockType":I
    iget v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->compressedLength:I

    move v8, v0

    .line 210
    .local v8, "compressedLength":I
    iget v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressedLength:I

    move v9, v0

    .line 211
    .local v9, "decompressedLength":I
    iget v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentChecksum:I

    move v10, v0

    .line 213
    .local v10, "currentChecksum":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v8, :cond_7

    .line 214
    move-object/from16 v14, p3

    goto :goto_2

    .line 217
    :cond_7
    iget-object v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v11, v0

    .line 218
    .local v11, "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    const/4 v12, 0x0

    .line 221
    .local v12, "uncompressed":Lio/netty/buffer/ByteBuf;
    sparse-switch v7, :sswitch_data_0

    .line 236
    move-object/from16 v14, p3

    :try_start_3
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;
    :try_end_3
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 228
    :sswitch_0
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v9, v9}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v12, v0

    .line 230
    iget-object v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    invoke-static/range {p2 .. p2}, Lio/netty/handler/codec/compression/CompressionUtil;->safeReadableNioBuffer(Lio/netty/buffer/ByteBuf;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 231
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    invoke-virtual {v12, v4, v9}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 230
    invoke-virtual {v0, v3, v4}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 233
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v12, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 234
    goto :goto_1

    .line 225
    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {v2, v0, v9}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 226
    .end local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .local v0, "uncompressed":Lio/netty/buffer/ByteBuf;
    move-object v12, v0

    .line 241
    .end local v0    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    :goto_1
    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 243
    if-eqz v11, :cond_8

    .line 244
    invoke-static {v11, v12, v10}, Lio/netty/handler/codec/compression/CompressionUtil;->checkChecksum(Lio/netty/handler/codec/compression/ByteBufChecksum;Lio/netty/buffer/ByteBuf;I)V
    :try_end_4
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    :cond_8
    move-object/from16 v14, p3

    :try_start_5
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v12, 0x0

    .line 248
    sget-object v0, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;
    :try_end_5
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 252
    if-eqz v12, :cond_9

    .line 253
    :try_start_6
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 256
    :cond_9
    nop

    .line 267
    .end local v7    # "blockType":I
    .end local v8    # "compressedLength":I
    .end local v9    # "decompressedLength":I
    .end local v10    # "currentChecksum":I
    .end local v11    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    .end local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    :goto_2
    nop

    .line 268
    return-void

    .line 252
    .restart local v7    # "blockType":I
    .restart local v8    # "compressedLength":I
    .restart local v9    # "decompressedLength":I
    .restart local v10    # "currentChecksum":I
    .restart local v11    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    .restart local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p3

    goto :goto_5

    .line 249
    :catch_0
    move-exception v0

    move-object/from16 v14, p3

    goto :goto_4

    .line 236
    :goto_3
    :try_start_7
    const-string v13, "unexpected blockType: %d (expected: %d or %d)"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 238
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v6

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v5

    .line 236
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local v7    # "blockType":I
    .end local v8    # "compressedLength":I
    .end local v9    # "decompressedLength":I
    .end local v10    # "currentChecksum":I
    .end local v11    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    .end local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_7
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 252
    .restart local v7    # "blockType":I
    .restart local v8    # "compressedLength":I
    .restart local v9    # "decompressedLength":I
    .restart local v10    # "currentChecksum":I
    .restart local v11    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    .restart local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Lnet/jpountz/lz4/LZ4Exception;
    :goto_4
    :try_start_8
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    invoke-direct {v3, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/Throwable;)V

    .end local v7    # "blockType":I
    .end local v8    # "compressedLength":I
    .end local v9    # "decompressedLength":I
    .end local v10    # "currentChecksum":I
    .end local v11    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    .end local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 252
    .end local v0    # "e":Lnet/jpountz/lz4/LZ4Exception;
    .restart local v7    # "blockType":I
    .restart local v8    # "compressedLength":I
    .restart local v9    # "decompressedLength":I
    .restart local v10    # "currentChecksum":I
    .restart local v11    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    .restart local v12    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_5
    if-eqz v12, :cond_a

    .line 253
    :try_start_9
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 255
    :cond_a
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 176
    .end local v8    # "compressedLength":I
    .local v0, "token":I
    .local v7, "magic":J
    .local v9, "compressionLevel":I
    .local v10, "blockType":I
    .local v11, "compressedLength":I
    .local v12, "decompressedLength":I
    .restart local v13    # "maxDecompressedLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_b
    move-object/from16 v14, p3

    .line 177
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v15, "invalid decompressedLength: %d (expected: 0-%d)"

    new-array v5, v5, [Ljava/lang/Object;

    .line 179
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    .line 177
    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 168
    .end local v12    # "decompressedLength":I
    .end local v13    # "maxDecompressedLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 v14, p3

    .line 169
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v13, "invalid compressedLength: %d (expected: 0-%d)"

    new-array v5, v5, [Ljava/lang/Object;

    .line 171
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    .line 169
    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 160
    .end local v0    # "token":I
    .end local v9    # "compressionLevel":I
    .end local v10    # "blockType":I
    .end local v11    # "compressedLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_d
    move-object/from16 v14, p3

    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v3, "unexpected block identifier"

    invoke-direct {v0, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 262
    .end local v7    # "magic":J
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 264
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v14, p3

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    sget-object v3, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 266
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public isClosed()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    sget-object v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->FINISHED:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
