.class public Lio/netty/handler/codec/compression/FastLzFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "FastLzFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;
    }
.end annotation


# instance fields
.field private final checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private chunkLength:I

.field private currentChecksum:I

.field private currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

.field private hasChecksum:Z

.field private isCompressed:Z

.field private originalLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/FastLzFrameDecoder;-><init>(Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 1
    .param p1, "checksum"    # Ljava/util/zip/Checksum;

    .line 108
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 47
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 110
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validateChecksums"    # Z

    .line 98
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/FastLzFrameDecoder;-><init>(Ljava/util/zip/Checksum;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 16
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

    .line 115
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    :try_start_0
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State:[I

    iget-object v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    .line 201
    move-object/from16 v3, p3

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 198
    :pswitch_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v8, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 199
    move-object/from16 v3, p3

    goto/16 :goto_9

    .line 117
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 118
    move-object/from16 v3, p3

    goto/16 :goto_9

    .line 121
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v0

    .line 122
    .local v0, "magic":I
    const v3, 0x464c5a

    if-ne v0, v3, :cond_10

    .line 126
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v3

    .line 127
    .local v3, "options":B
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v10, :cond_1

    move v4, v10

    goto :goto_0

    :cond_1
    move v4, v11

    :goto_0
    iput-boolean v4, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    .line 128
    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    move v4, v10

    goto :goto_1

    :cond_2
    move v4, v11

    :goto_1
    iput-boolean v4, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    .line 130
    sget-object v4, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v4, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 133
    .end local v0    # "magic":I
    .end local v3    # "options":B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget-boolean v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    if-eqz v3, :cond_3

    move v3, v9

    goto :goto_2

    :cond_3
    move v3, v11

    :goto_2
    add-int/2addr v3, v9

    iget-boolean v4, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v11

    :goto_3
    add-int/2addr v3, v2

    if-ge v0, v3, :cond_5

    .line 134
    move-object/from16 v3, p3

    goto/16 :goto_9

    .line 136
    :cond_5
    iget-boolean v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v11

    :goto_4
    iput v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    .line 137
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    iput v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    .line 138
    iget-boolean v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    if-eqz v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    goto :goto_5

    :cond_7
    iget v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    :goto_5
    iput v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->originalLength:I

    .line 140
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 143
    :pswitch_3
    iget v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    move v12, v0

    .line 144
    .local v12, "chunkLength":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v12, :cond_8

    .line 145
    move-object/from16 v3, p3

    goto/16 :goto_9

    .line 148
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    move v13, v0

    .line 149
    .local v13, "idx":I
    iget v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->originalLength:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v14, v0

    .line 151
    .local v14, "originalLength":I
    const/4 v2, 0x0

    .line 154
    .local v2, "output":Lio/netty/buffer/ByteBuf;
    :try_start_3
    iget-boolean v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    if-eqz v0, :cond_a

    .line 156
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v14}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v15, v0

    .line 157
    .end local v2    # "output":Lio/netty/buffer/ByteBuf;
    .local v15, "output":Lio/netty/buffer/ByteBuf;
    :try_start_4
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 158
    .local v6, "outputOffset":I
    move-object/from16 v2, p2

    move v3, v13

    move v4, v12

    move-object v5, v15

    move v7, v14

    invoke-static/range {v2 .. v7}, Lio/netty/handler/codec/compression/FastLz;->decompress(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;II)I

    move-result v0

    .line 160
    .local v0, "decompressedBytes":I
    if-ne v14, v0, :cond_9

    .line 165
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v15, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 166
    move-object v2, v15

    .end local v0    # "decompressedBytes":I
    .end local v6    # "outputOffset":I
    goto :goto_6

    .line 161
    .restart local v0    # "decompressedBytes":I
    .restart local v6    # "outputOffset":I
    :cond_9
    new-instance v2, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v3, "stream corrupted: originalLength(%d) and actual length(%d) mismatch"

    new-array v4, v9, [Ljava/lang/Object;

    .line 163
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 161
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local v12    # "chunkLength":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .end local v15    # "output":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    .end local v0    # "decompressedBytes":I
    .end local v6    # "outputOffset":I
    .restart local v12    # "chunkLength":I
    .restart local v13    # "idx":I
    .restart local v14    # "originalLength":I
    .restart local v15    # "output":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v3, p3

    move-object v2, v15

    goto :goto_a

    .line 167
    .end local v15    # "output":Lio/netty/buffer/ByteBuf;
    .restart local v2    # "output":Lio/netty/buffer/ByteBuf;
    :cond_a
    :try_start_5
    invoke-virtual {v8, v13, v12}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .end local v2    # "output":Lio/netty/buffer/ByteBuf;
    .local v0, "output":Lio/netty/buffer/ByteBuf;
    move-object v2, v0

    .line 170
    .end local v0    # "output":Lio/netty/buffer/ByteBuf;
    .restart local v2    # "output":Lio/netty/buffer/ByteBuf;
    :goto_6
    iget-object v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 171
    .local v0, "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    iget-boolean v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    if-eqz v3, :cond_c

    if-eqz v0, :cond_c

    .line 172
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 173
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 174
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    .line 175
    .local v3, "checksumResult":I
    iget v4, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    if-ne v3, v4, :cond_b

    goto :goto_7

    .line 176
    :cond_b
    new-instance v4, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "stream corrupted: mismatching checksum: %d (expected: %d)"

    new-array v6, v9, [Ljava/lang/Object;

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    .line 176
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local v2    # "output":Lio/netty/buffer/ByteBuf;
    .end local v12    # "chunkLength":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4

    .line 182
    .end local v3    # "checksumResult":I
    .restart local v2    # "output":Lio/netty/buffer/ByteBuf;
    .restart local v12    # "chunkLength":I
    .restart local v13    # "idx":I
    .restart local v14    # "originalLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_c
    :goto_7
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-lez v3, :cond_d

    .line 183
    move-object/from16 v3, p3

    :try_start_6
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 185
    :cond_d
    move-object/from16 v3, p3

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 187
    :goto_8
    const/4 v2, 0x0

    .line 188
    invoke-virtual {v8, v12}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 190
    sget-object v4, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v4, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 192
    .end local v0    # "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    if-eqz v2, :cond_e

    .line 193
    :try_start_7
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 196
    :cond_e
    nop

    .line 206
    .end local v2    # "output":Lio/netty/buffer/ByteBuf;
    .end local v12    # "chunkLength":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    :goto_9
    nop

    .line 207
    return-void

    .line 192
    .restart local v2    # "output":Lio/netty/buffer/ByteBuf;
    .restart local v12    # "chunkLength":I
    .restart local v13    # "idx":I
    .restart local v14    # "originalLength":I
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v3, p3

    :goto_a
    if-eqz v2, :cond_f

    .line 193
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 195
    :cond_f
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 123
    .end local v2    # "output":Lio/netty/buffer/ByteBuf;
    .end local v12    # "chunkLength":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .local v0, "magic":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_10
    move-object/from16 v3, p3

    new-instance v2, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "unexpected block identifier"

    invoke-direct {v2, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v2

    .line 201
    .end local v0    # "magic":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 203
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    sget-object v2, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 205
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
