.class public Lio/netty/handler/codec/compression/LzfDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "LzfDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/LzfDecoder$State;
    }
.end annotation


# static fields
.field private static final MAGIC_NUMBER:S = 0x5a56s


# instance fields
.field private chunkLength:I

.field private currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

.field private decoder:Lcom/ning/compress/lzf/ChunkDecoder;

.field private isCompressed:Z

.field private originalLength:I

.field private recycler:Lcom/ning/compress/BufferRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/LzfDecoder;-><init>(Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "safeInstance"    # Z

    .line 103
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 51
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lcom/ning/compress/lzf/util/ChunkDecoderFactory;->safeInstance()Lcom/ning/compress/lzf/ChunkDecoder;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lcom/ning/compress/lzf/util/ChunkDecoderFactory;->optimalInstance()Lcom/ning/compress/lzf/ChunkDecoder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfDecoder;->decoder:Lcom/ning/compress/lzf/ChunkDecoder;

    .line 108
    invoke-static {}, Lcom/ning/compress/BufferRecycler;->instance()Lcom/ning/compress/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    .line 109
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 19
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

    .line 114
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    :try_start_0
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State:[I

    iget-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    invoke-virtual {v4}, Lio/netty/handler/codec/compression/LzfDecoder$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const v4, 0xffff

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    goto/16 :goto_9

    .line 230
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 231
    goto/16 :goto_7

    .line 116
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v8, 0x5

    if-ge v0, v8, :cond_0

    .line 117
    goto/16 :goto_7

    .line 119
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    .line 120
    .local v0, "magic":I
    const/16 v8, 0x5a56

    if-ne v0, v8, :cond_d

    .line 124
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v8

    .line 125
    .local v8, "type":I
    packed-switch v8, :pswitch_data_1

    .line 135
    new-instance v4, Lio/netty/handler/codec/compression/DecompressionException;

    goto/16 :goto_8

    .line 131
    :pswitch_2
    iput-boolean v6, v1, Lio/netty/handler/codec/compression/LzfDecoder;->isCompressed:Z

    .line 132
    sget-object v9, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_ORIGINAL_LENGTH:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v9, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 133
    goto :goto_0

    .line 127
    :pswitch_3
    iput-boolean v7, v1, Lio/netty/handler/codec/compression/LzfDecoder;->isCompressed:Z

    .line 128
    sget-object v9, Lio/netty/handler/codec/compression/LzfDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v9, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 129
    nop

    .line 139
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v9

    iput v9, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    .line 144
    iget v9, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    if-gt v9, v4, :cond_c

    .line 150
    if-eq v8, v6, :cond_1

    .line 151
    goto/16 :goto_7

    .line 155
    .end local v0    # "magic":I
    .end local v8    # "type":I
    :cond_1
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 156
    goto/16 :goto_7

    .line 158
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    iput v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->originalLength:I

    .line 163
    iget v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->originalLength:I

    if-gt v0, v4, :cond_b

    .line 169
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 172
    :pswitch_5
    iget v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    move v4, v0

    .line 173
    .local v4, "chunkLength":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 174
    goto/16 :goto_7

    .line 176
    :cond_3
    iget v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->originalLength:I

    move v5, v0

    .line 178
    .local v5, "originalLength":I
    iget-boolean v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->isCompressed:Z

    if-eqz v0, :cond_9

    .line 179
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    move v6, v0

    .line 183
    .local v6, "idx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 185
    .local v0, "inputArray":[B
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    add-int/2addr v7, v6

    move v14, v7

    move-object v7, v0

    .local v7, "inPos":I
    goto :goto_1

    .line 187
    .end local v0    # "inputArray":[B
    .end local v7    # "inPos":I
    :cond_4
    iget-object v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v0, v4}, Lcom/ning/compress/BufferRecycler;->allocInputBuffer(I)[B

    move-result-object v0

    .line 188
    .restart local v0    # "inputArray":[B
    invoke-virtual {v2, v6, v0, v7, v4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 189
    const/4 v7, 0x0

    move v14, v7

    move-object v7, v0

    .line 192
    .end local v0    # "inputArray":[B
    .local v7, "inputArray":[B
    .local v14, "inPos":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v5, v5}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v15, v0

    .line 195
    .local v15, "uncompressed":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 197
    .local v0, "outputArray":[B
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v8

    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    add-int/2addr v8, v9

    move-object v13, v0

    move/from16 v16, v8

    .local v8, "outPos":I
    goto :goto_2

    .line 199
    .end local v0    # "outputArray":[B
    .end local v8    # "outPos":I
    :cond_5
    new-array v0, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .restart local v0    # "outputArray":[B
    const/4 v8, 0x0

    move-object v13, v0

    move/from16 v16, v8

    .line 203
    .end local v0    # "outputArray":[B
    .local v13, "outputArray":[B
    .local v16, "outPos":I
    :goto_2
    const/16 v17, 0x0

    .line 205
    .local v17, "success":Z
    :try_start_1
    iget-object v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->decoder:Lcom/ning/compress/lzf/ChunkDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int v0, v16, v5

    move-object v9, v7

    move v10, v14

    move-object v11, v13

    move/from16 v12, v16

    move/from16 v18, v6

    move-object v6, v13

    .end local v13    # "outputArray":[B
    .local v6, "outputArray":[B
    .local v18, "idx":I
    move v13, v0

    :try_start_2
    invoke-virtual/range {v8 .. v13}, Lcom/ning/compress/lzf/ChunkDecoder;->decodeChunk([BI[BII)V

    .line 206
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v15, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 209
    :cond_6
    invoke-virtual {v15, v6}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 211
    :goto_3
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    const/4 v0, 0x1

    .line 215
    .end local v17    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_7

    .line 216
    :try_start_3
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 220
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v8

    if-nez v8, :cond_a

    .line 221
    iget-object v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v8, v7}, Lcom/ning/compress/BufferRecycler;->releaseInputBuffer([B)V

    goto :goto_5

    .line 215
    .end local v0    # "success":Z
    .restart local v17    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v18    # "idx":I
    .local v6, "idx":I
    .restart local v13    # "outputArray":[B
    :catchall_1
    move-exception v0

    move/from16 v18, v6

    move-object v6, v13

    .end local v13    # "outputArray":[B
    .local v6, "outputArray":[B
    .restart local v18    # "idx":I
    :goto_4
    if-nez v17, :cond_8

    .line 216
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 218
    :cond_8
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 223
    .end local v6    # "outputArray":[B
    .end local v7    # "inputArray":[B
    .end local v14    # "inPos":I
    .end local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v16    # "outPos":I
    .end local v17    # "success":Z
    .end local v18    # "idx":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_9
    if-lez v4, :cond_a

    .line 224
    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 223
    :cond_a
    :goto_5
    nop

    .line 227
    :goto_6
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 228
    nop

    .line 240
    .end local v4    # "chunkLength":I
    .end local v5    # "originalLength":I
    :goto_7
    nop

    .line 241
    return-void

    .line 164
    :cond_b
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v8, "original length exceeds maximum: %d (expected: =< %d)"

    new-array v5, v5, [Ljava/lang/Object;

    iget v9, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    .line 164
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 145
    .local v0, "magic":I
    .local v8, "type":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_c
    new-instance v9, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v10, "chunk length exceeds maximum: %d (expected: =< %d)"

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    .line 147
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    .line 145
    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v9

    .line 135
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_8
    const-string v9, "unknown type of chunk: %d (expected: %d or %d)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    .line 135
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4

    .line 121
    .end local v8    # "type":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_d
    new-instance v4, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "unexpected block identifier"

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4

    .line 233
    .end local v0    # "magic":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 235
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lio/netty/handler/codec/compression/LzfDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 237
    const/4 v4, 0x0

    iput-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->decoder:Lcom/ning/compress/lzf/ChunkDecoder;

    .line 238
    iput-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    .line 239
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
