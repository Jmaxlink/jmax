.class final Lio/netty/handler/codec/compression/FastLz;
.super Ljava/lang/Object;
.source "FastLz.java"


# static fields
.field static final BLOCK_TYPE_COMPRESSED:B = 0x1t

.field static final BLOCK_TYPE_NON_COMPRESSED:B = 0x0t

.field static final BLOCK_WITHOUT_CHECKSUM:B = 0x0t

.field static final BLOCK_WITH_CHECKSUM:B = 0x10t

.field static final CHECKSUM_OFFSET:I = 0x4

.field private static final HASH_LOG:I = 0xd

.field private static final HASH_MASK:I = 0x1fff

.field private static final HASH_SIZE:I = 0x2000

.field static final LEVEL_1:I = 0x1

.field static final LEVEL_2:I = 0x2

.field static final LEVEL_AUTO:I = 0x0

.field static final MAGIC_NUMBER:I = 0x464c5a

.field static final MAX_CHUNK_LENGTH:I = 0xffff

.field private static final MAX_COPY:I = 0x20

.field private static final MAX_DISTANCE:I = 0x1fff

.field private static final MAX_FARDISTANCE:I = 0x11ffd

.field private static final MAX_LEN:I = 0x108

.field static final MIN_LENGTH_TO_COMPRESSION:I = 0x20

.field private static final MIN_RECOMENDED_LENGTH_FOR_LEVEL_2:I = 0x10000

.field static final OPTIONS_OFFSET:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOutputBufferLength(I)I
    .locals 4
    .param p0, "inputLength"    # I

    .line 85
    int-to-double v0, p0

    const-wide v2, 0x3ff0f5c28f5c28f6L    # 1.06

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 86
    .local v0, "outputLength":I
    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method static compress(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;II)I
    .locals 28
    .param p0, "input"    # Lio/netty/buffer/ByteBuf;
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I
    .param p3, "output"    # Lio/netty/buffer/ByteBuf;
    .param p4, "outOffset"    # I
    .param p5, "proposedLevel"    # I

    .line 99
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p5, :cond_1

    .line 100
    const/high16 v6, 0x10000

    if-ge v1, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .local v6, "level":I
    :goto_0
    goto :goto_1

    .line 102
    .end local v6    # "level":I
    :cond_1
    move/from16 v6, p5

    .line 105
    .restart local v6    # "level":I
    :goto_1
    const/4 v7, 0x0

    .line 106
    .local v7, "ip":I
    add-int v8, v7, v1

    sub-int/2addr v8, v4

    .line 107
    .local v8, "ipBound":I
    add-int v9, v7, v1

    add-int/lit8 v9, v9, -0xc

    .line 109
    .local v9, "ipLimit":I
    const/4 v10, 0x0

    .line 112
    .local v10, "op":I
    const/16 v11, 0x2000

    new-array v12, v11, [I

    .line 123
    .local v12, "htab":[I
    const/4 v13, 0x4

    if-ge v1, v13, :cond_4

    .line 124
    if-eqz v1, :cond_3

    .line 126
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "op":I
    .local v4, "op":I
    add-int/2addr v10, v3

    add-int/lit8 v11, v1, -0x1

    int-to-byte v11, v11

    invoke-virtual {v2, v10, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 127
    add-int/2addr v8, v5

    .line 128
    :goto_2
    if-gt v7, v8, :cond_2

    .line 129
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .local v5, "op":I
    add-int/2addr v4, v3

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "ip":I
    .local v10, "ip":I
    add-int v7, p1, v7

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v4, v5

    move v7, v10

    goto :goto_2

    .line 131
    .end local v5    # "op":I
    .end local v10    # "ip":I
    .restart local v4    # "op":I
    .restart local v7    # "ip":I
    :cond_2
    add-int/lit8 v5, v1, 0x1

    return v5

    .line 134
    .end local v4    # "op":I
    .local v10, "op":I
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 139
    :cond_4
    const/4 v13, 0x0

    .local v13, "hslot":I
    :goto_3
    if-ge v13, v11, :cond_5

    .line 141
    aput v7, v12, v13

    .line 139
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 145
    :cond_5
    const/4 v11, 0x2

    .line 146
    .local v11, "copy":I
    add-int/lit8 v14, v10, 0x1

    .end local v10    # "op":I
    .local v14, "op":I
    add-int/2addr v10, v3

    const/16 v15, 0x1f

    invoke-virtual {v2, v10, v15}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 147
    add-int/lit8 v10, v14, 0x1

    .end local v14    # "op":I
    .restart local v10    # "op":I
    add-int/2addr v14, v3

    add-int/lit8 v16, v7, 0x1

    .end local v7    # "ip":I
    .local v16, "ip":I
    add-int v7, p1, v7

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v14, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 148
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "op":I
    .local v7, "op":I
    add-int/2addr v10, v3

    add-int/lit8 v14, v16, 0x1

    .end local v16    # "ip":I
    .local v14, "ip":I
    add-int v15, p1, v16

    invoke-virtual {v0, v15}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v15

    invoke-virtual {v2, v10, v15}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 151
    :goto_4
    if-ge v14, v9, :cond_25

    .line 152
    const/4 v15, 0x0

    .line 154
    .local v15, "ref":I
    const-wide/16 v17, 0x0

    .line 159
    .local v17, "distance":J
    const/16 v16, 0x3

    .line 162
    .local v16, "len":I
    move/from16 v19, v14

    .line 164
    .local v19, "anchor":I
    const/16 v20, 0x0

    .line 167
    .local v20, "matchLabel":Z
    if-ne v6, v4, :cond_6

    .line 169
    add-int v10, p1, v14

    invoke-virtual {v0, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    add-int v22, p1, v14

    add-int/lit8 v4, v22, -0x1

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    if-ne v10, v4, :cond_6

    add-int v4, p1, v14

    sub-int/2addr v4, v5

    .line 170
    invoke-static {v0, v4}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    add-int v10, p1, v14

    add-int/2addr v10, v5

    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v10

    if-ne v4, v10, :cond_6

    .line 171
    const-wide/16 v17, 0x1

    .line 172
    add-int/lit8 v14, v14, 0x3

    .line 173
    add-int/lit8 v15, v19, 0x2

    .line 178
    const/16 v20, 0x1

    .line 181
    :cond_6
    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x1fff

    if-nez v20, :cond_13

    .line 184
    add-int v4, p1, v14

    invoke-static {v0, v4}, Lio/netty/handler/codec/compression/FastLz;->hashFunction(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    .line 186
    .local v4, "hval":I
    move v13, v4

    .line 188
    aget v10, v12, v4

    .line 191
    .end local v15    # "ref":I
    .local v10, "ref":I
    sub-int v15, v19, v10

    move/from16 v22, v6

    .end local v6    # "level":I
    .local v22, "level":I
    int-to-long v5, v15

    .line 195
    .end local v17    # "distance":J
    .local v5, "distance":J
    aput v19, v12, v13

    .line 198
    cmp-long v15, v5, v23

    if-eqz v15, :cond_10

    move/from16 v15, v22

    const/4 v1, 0x1

    .end local v22    # "level":I
    .local v15, "level":I
    if-ne v15, v1, :cond_7

    cmp-long v1, v5, v25

    if-ltz v1, :cond_8

    move/from16 v22, v4

    goto/16 :goto_6

    :cond_7
    const-wide/32 v17, 0x11ffd

    cmp-long v1, v5, v17

    if-gez v1, :cond_f

    :cond_8
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "ref":I
    .local v1, "ref":I
    add-int v10, p1, v10

    .line 200
    invoke-virtual {v0, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    add-int/lit8 v17, v14, 0x1

    .end local v14    # "ip":I
    .local v17, "ip":I
    add-int v14, p1, v14

    invoke-virtual {v0, v14}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v14

    if-ne v10, v14, :cond_e

    add-int/lit8 v10, v1, 0x1

    .end local v1    # "ref":I
    .restart local v10    # "ref":I
    add-int v1, p1, v1

    .line 201
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    add-int/lit8 v14, v17, 0x1

    move/from16 v22, v4

    .end local v4    # "hval":I
    .end local v17    # "ip":I
    .restart local v14    # "ip":I
    .local v22, "hval":I
    add-int v4, p1, v17

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    if-ne v1, v4, :cond_11

    add-int/lit8 v1, v10, 0x1

    .end local v10    # "ref":I
    .restart local v1    # "ref":I
    add-int v4, p1, v10

    .line 202
    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    add-int/lit8 v10, v14, 0x1

    .end local v14    # "ip":I
    .local v10, "ip":I
    add-int v14, p1, v14

    invoke-virtual {v0, v14}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v14

    if-eq v4, v14, :cond_9

    move v14, v10

    move v10, v1

    goto/16 :goto_6

    .line 216
    :cond_9
    const/4 v4, 0x2

    if-ne v15, v4, :cond_d

    .line 218
    cmp-long v4, v5, v25

    if-ltz v4, :cond_d

    .line 219
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "ip":I
    .local v4, "ip":I
    add-int v10, p1, v10

    invoke-virtual {v0, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    add-int/lit8 v14, v1, 0x1

    .end local v1    # "ref":I
    .local v14, "ref":I
    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-ne v10, v1, :cond_b

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "ip":I
    .local v1, "ip":I
    add-int v4, p1, v4

    .line 220
    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    add-int/lit8 v10, v14, 0x1

    .end local v14    # "ref":I
    .local v10, "ref":I
    add-int v14, p1, v14

    invoke-virtual {v0, v14}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v14

    if-eq v4, v14, :cond_a

    move v4, v1

    move v14, v10

    goto :goto_5

    .line 233
    :cond_a
    add-int/lit8 v16, v16, 0x2

    move v14, v1

    move-wide/from16 v17, v5

    move v6, v15

    move v15, v10

    goto/16 :goto_7

    .line 224
    .end local v1    # "ip":I
    .end local v10    # "ref":I
    .restart local v4    # "ip":I
    .restart local v14    # "ref":I
    :cond_b
    :goto_5
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "op":I
    .local v1, "op":I
    add-int/2addr v7, v3

    add-int/lit8 v10, v19, 0x1

    move/from16 v17, v4

    .end local v4    # "ip":I
    .end local v19    # "anchor":I
    .local v10, "anchor":I
    .restart local v17    # "ip":I
    add-int v4, p1, v19

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    invoke-virtual {v2, v7, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 225
    move v4, v10

    .line 226
    .end local v17    # "ip":I
    .restart local v4    # "ip":I
    add-int/lit8 v11, v11, 0x1

    .line 227
    const/16 v7, 0x20

    if-ne v11, v7, :cond_c

    .line 228
    const/4 v11, 0x0

    .line 229
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "op":I
    .restart local v7    # "op":I
    add-int/2addr v1, v3

    move/from16 v17, v4

    const/16 v4, 0x1f

    .end local v4    # "ip":I
    .restart local v17    # "ip":I
    invoke-virtual {v2, v1, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move/from16 v1, p2

    move v6, v15

    move/from16 v14, v17

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_4

    .line 227
    .end local v7    # "op":I
    .end local v17    # "ip":I
    .restart local v1    # "op":I
    .restart local v4    # "ip":I
    :cond_c
    move/from16 v17, v4

    .end local v4    # "ip":I
    .restart local v17    # "ip":I
    move v7, v1

    move v6, v15

    move/from16 v14, v17

    const/4 v4, 0x2

    const/4 v5, 0x1

    move/from16 v1, p2

    goto/16 :goto_4

    .line 241
    .end local v14    # "ref":I
    .end local v17    # "ip":I
    .end local v22    # "hval":I
    .local v1, "ref":I
    .restart local v7    # "op":I
    .local v10, "ip":I
    .restart local v19    # "anchor":I
    :cond_d
    move-wide/from16 v17, v5

    move v14, v10

    move v6, v15

    move v15, v1

    goto :goto_7

    .line 200
    .end local v10    # "ip":I
    .local v4, "hval":I
    .restart local v17    # "ip":I
    :cond_e
    move/from16 v22, v4

    .end local v4    # "hval":I
    .restart local v22    # "hval":I
    move v10, v1

    move/from16 v14, v17

    goto :goto_6

    .line 198
    .end local v1    # "ref":I
    .end local v17    # "ip":I
    .end local v22    # "hval":I
    .restart local v4    # "hval":I
    .local v10, "ref":I
    .local v14, "ip":I
    :cond_f
    move/from16 v22, v4

    .end local v4    # "hval":I
    .restart local v22    # "hval":I
    goto :goto_6

    .end local v15    # "level":I
    .restart local v4    # "hval":I
    .local v22, "level":I
    :cond_10
    move/from16 v15, v22

    move/from16 v22, v4

    .line 206
    .end local v4    # "hval":I
    .restart local v15    # "level":I
    .local v22, "hval":I
    :cond_11
    :goto_6
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "op":I
    .local v1, "op":I
    add-int v4, v3, v7

    add-int/lit8 v7, v19, 0x1

    move-wide/from16 v17, v5

    .end local v5    # "distance":J
    .end local v19    # "anchor":I
    .local v7, "anchor":I
    .local v17, "distance":J
    add-int v5, p1, v19

    invoke-virtual {v0, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    invoke-virtual {v2, v4, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 207
    move v14, v7

    .line 208
    add-int/lit8 v11, v11, 0x1

    .line 209
    const/16 v4, 0x20

    if-ne v11, v4, :cond_12

    .line 210
    const/4 v11, 0x0

    .line 211
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "op":I
    .local v4, "op":I
    add-int/2addr v1, v3

    const/16 v5, 0x1f

    invoke-virtual {v2, v1, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move/from16 v1, p2

    move v7, v4

    move v6, v15

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_4

    .line 209
    .end local v4    # "op":I
    .restart local v1    # "op":I
    :cond_12
    move v7, v1

    move v6, v15

    const/4 v4, 0x2

    const/4 v5, 0x1

    move/from16 v1, p2

    goto/16 :goto_4

    .line 241
    .end local v1    # "op":I
    .end local v10    # "ref":I
    .end local v22    # "hval":I
    .restart local v6    # "level":I
    .local v7, "op":I
    .local v15, "ref":I
    .restart local v19    # "anchor":I
    :cond_13
    :goto_7
    add-int v1, v19, v16

    .line 244
    .end local v14    # "ip":I
    .local v1, "ip":I
    const-wide/16 v4, 0x1

    sub-long v17, v17, v4

    .line 246
    cmp-long v4, v17, v23

    const/16 v5, 0x8

    if-nez v4, :cond_16

    .line 249
    add-int v4, p1, v1

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    .line 250
    .local v4, "x":B
    :goto_8
    if-ge v1, v8, :cond_15

    .line 251
    add-int/lit8 v10, v15, 0x1

    .end local v15    # "ref":I
    .restart local v10    # "ref":I
    add-int v14, p1, v15

    invoke-virtual {v0, v14}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v14

    if-eq v14, v4, :cond_14

    .line 252
    move v15, v10

    goto :goto_9

    .line 254
    :cond_14
    add-int/lit8 v1, v1, 0x1

    move v15, v10

    goto :goto_8

    .line 257
    .end local v4    # "x":B
    .end local v10    # "ref":I
    .restart local v15    # "ref":I
    :cond_15
    :goto_9
    goto :goto_d

    .line 259
    :cond_16
    const/4 v4, 0x0

    .line 260
    .local v4, "missMatch":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    if-ge v10, v5, :cond_18

    .line 261
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ref":I
    .local v14, "ref":I
    add-int v15, p1, v15

    invoke-virtual {v0, v15}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v15

    add-int/lit8 v21, v1, 0x1

    .end local v1    # "ip":I
    .local v21, "ip":I
    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-eq v15, v1, :cond_17

    .line 262
    const/4 v4, 0x1

    .line 263
    move v15, v14

    move/from16 v1, v21

    goto :goto_b

    .line 260
    :cond_17
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    move/from16 v1, v21

    goto :goto_a

    .line 266
    .end local v10    # "i":I
    .end local v14    # "ref":I
    .end local v21    # "ip":I
    .restart local v1    # "ip":I
    .restart local v15    # "ref":I
    :cond_18
    :goto_b
    if-nez v4, :cond_1a

    .line 267
    :goto_c
    if-ge v1, v8, :cond_1a

    .line 268
    add-int/lit8 v10, v15, 0x1

    .end local v15    # "ref":I
    .local v10, "ref":I
    add-int v14, p1, v15

    invoke-virtual {v0, v14}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v14

    add-int/lit8 v15, v1, 0x1

    .end local v1    # "ip":I
    .local v15, "ip":I
    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-eq v14, v1, :cond_19

    .line 269
    move v1, v15

    move v15, v10

    goto :goto_d

    .line 268
    :cond_19
    move v1, v15

    move v15, v10

    goto :goto_c

    .line 276
    .end local v4    # "missMatch":Z
    .end local v10    # "ref":I
    .restart local v1    # "ip":I
    .local v15, "ref":I
    :cond_1a
    :goto_d
    if-eqz v11, :cond_1b

    .line 279
    add-int v4, v3, v7

    sub-int/2addr v4, v11

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    add-int/lit8 v10, v11, -0x1

    int-to-byte v10, v10

    invoke-virtual {v2, v4, v10}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_e

    .line 282
    :cond_1b
    add-int/lit8 v7, v7, -0x1

    .line 286
    :goto_e
    const/4 v11, 0x0

    .line 289
    const/4 v4, -0x3

    add-int/2addr v1, v4

    .line 290
    sub-int v10, v1, v19

    .line 293
    .end local v16    # "len":I
    .local v10, "len":I
    const-wide/16 v21, 0xe0

    const/4 v14, 0x7

    const-wide/16 v23, 0xff

    const/4 v4, 0x2

    if-ne v6, v4, :cond_21

    .line 294
    cmp-long v4, v17, v25

    const/4 v5, -0x1

    if-gez v4, :cond_1e

    .line 295
    if-ge v10, v14, :cond_1c

    .line 296
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .local v4, "op":I
    add-int v5, v3, v7

    shl-int/lit8 v7, v10, 0x5

    move/from16 v27, v13

    .end local v13    # "hslot":I
    .local v27, "hslot":I
    int-to-long v13, v7

    const/16 v7, 0x8

    ushr-long v21, v17, v7

    add-long v13, v13, v21

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 297
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .local v5, "op":I
    add-int/2addr v4, v3

    and-long v13, v17, v23

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v13, v15

    goto/16 :goto_13

    .line 299
    .end local v5    # "op":I
    .end local v27    # "hslot":I
    .restart local v7    # "op":I
    .restart local v13    # "hslot":I
    :cond_1c
    move/from16 v27, v13

    .end local v13    # "hslot":I
    .restart local v27    # "hslot":I
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v7, v3

    const/16 v13, 0x8

    ushr-long v13, v17, v13

    add-long v13, v13, v21

    long-to-int v13, v13

    int-to-byte v13, v13

    invoke-virtual {v2, v7, v13}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 300
    add-int/lit8 v10, v10, -0x7

    :goto_f
    const/16 v7, 0xff

    if-lt v10, v7, :cond_1d

    .line 301
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "op":I
    .restart local v7    # "op":I
    add-int/2addr v4, v3

    invoke-virtual {v2, v4, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 300
    add-int/lit16 v10, v10, -0xff

    move v4, v7

    goto :goto_f

    .line 303
    .end local v7    # "op":I
    .restart local v4    # "op":I
    :cond_1d
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v4, v3

    int-to-byte v7, v10

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 304
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v5, v3

    and-long v13, v17, v23

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v5, v4

    move v13, v15

    goto/16 :goto_13

    .line 308
    .end local v4    # "op":I
    .end local v27    # "hslot":I
    .restart local v7    # "op":I
    .restart local v13    # "hslot":I
    :cond_1e
    move/from16 v27, v13

    .end local v13    # "hslot":I
    .restart local v27    # "hslot":I
    if-ge v10, v14, :cond_1f

    .line 309
    sub-long v17, v17, v25

    .line 310
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v7, v3

    shl-int/lit8 v13, v10, 0x5

    const/16 v14, 0x1f

    add-int/2addr v13, v14

    int-to-byte v13, v13

    invoke-virtual {v2, v7, v13}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 311
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "op":I
    .restart local v7    # "op":I
    add-int/2addr v4, v3

    invoke-virtual {v2, v4, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 312
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int v5, v3, v7

    const/16 v7, 0x8

    ushr-long v13, v17, v7

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 313
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v4, v3

    and-long v13, v17, v23

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v13, v15

    goto/16 :goto_13

    .line 315
    .end local v5    # "op":I
    .restart local v7    # "op":I
    :cond_1f
    sub-long v17, v17, v25

    .line 316
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v7, v3

    invoke-virtual {v2, v7, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 317
    add-int/lit8 v10, v10, -0x7

    :goto_10
    const/16 v7, 0xff

    if-lt v10, v7, :cond_20

    .line 318
    add-int/lit8 v13, v4, 0x1

    .end local v4    # "op":I
    .local v13, "op":I
    add-int/2addr v4, v3

    invoke-virtual {v2, v4, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 317
    add-int/lit16 v10, v10, -0xff

    move v4, v13

    goto :goto_10

    .line 320
    .end local v13    # "op":I
    .restart local v4    # "op":I
    :cond_20
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "op":I
    .restart local v7    # "op":I
    add-int/2addr v4, v3

    int-to-byte v13, v10

    invoke-virtual {v2, v4, v13}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 321
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v7, v3

    invoke-virtual {v2, v7, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 322
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v4, v3

    const/16 v7, 0x8

    ushr-long v13, v17, v7

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 323
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v5, v3

    and-long v13, v17, v23

    long-to-int v7, v13

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v5, v4

    move v13, v15

    goto/16 :goto_13

    .line 327
    .end local v4    # "op":I
    .end local v27    # "hslot":I
    .restart local v7    # "op":I
    .local v13, "hslot":I
    :cond_21
    move/from16 v27, v13

    .end local v13    # "hslot":I
    .restart local v27    # "hslot":I
    const/16 v4, 0x106

    if-le v10, v4, :cond_23

    .line 328
    :goto_11
    if-le v10, v4, :cond_22

    .line 329
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v7, v3

    const/16 v13, 0x8

    ushr-long v25, v17, v13

    move v13, v15

    .end local v15    # "ref":I
    .local v13, "ref":I
    add-long v14, v25, v21

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v2, v7, v14}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 330
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "op":I
    .restart local v7    # "op":I
    add-int/2addr v5, v3

    const/4 v14, -0x3

    invoke-virtual {v2, v5, v14}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 331
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v7, v3

    move/from16 v16, v5

    .end local v5    # "op":I
    .local v16, "op":I
    and-long v4, v17, v23

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {v2, v7, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 332
    add-int/lit16 v10, v10, -0x106

    move v15, v13

    move/from16 v7, v16

    const/16 v4, 0x106

    const/4 v14, 0x7

    goto :goto_11

    .line 328
    .end local v13    # "ref":I
    .end local v16    # "op":I
    .restart local v7    # "op":I
    .restart local v15    # "ref":I
    :cond_22
    move v13, v15

    .end local v15    # "ref":I
    .restart local v13    # "ref":I
    goto :goto_12

    .line 327
    .end local v13    # "ref":I
    .restart local v15    # "ref":I
    :cond_23
    move v13, v15

    .line 336
    .end local v15    # "ref":I
    .restart local v13    # "ref":I
    :goto_12
    const/4 v4, 0x7

    if-ge v10, v4, :cond_24

    .line 337
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int v5, v3, v7

    shl-int/lit8 v7, v10, 0x5

    int-to-long v14, v7

    const/16 v7, 0x8

    ushr-long v21, v17, v7

    add-long v14, v14, v21

    long-to-int v7, v14

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 338
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v4, v3

    and-long v14, v17, v23

    long-to-int v7, v14

    int-to-byte v7, v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_13

    .line 340
    .end local v5    # "op":I
    .restart local v7    # "op":I
    :cond_24
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int v5, v3, v7

    const/16 v7, 0x8

    ushr-long v14, v17, v7

    add-long v14, v14, v21

    long-to-int v7, v14

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 341
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int/2addr v4, v3

    add-int/lit8 v7, v10, -0x7

    int-to-byte v7, v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 342
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "op":I
    .restart local v4    # "op":I
    add-int/2addr v5, v3

    and-long v14, v17, v23

    long-to-int v7, v14

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v5, v4

    .line 348
    .end local v4    # "op":I
    .restart local v5    # "op":I
    :goto_13
    add-int v4, p1, v1

    invoke-static {v0, v4}, Lio/netty/handler/codec/compression/FastLz;->hashFunction(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    .line 349
    .local v4, "hval":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "ip":I
    .local v7, "ip":I
    aput v1, v12, v4

    .line 352
    add-int v1, p1, v7

    invoke-static {v0, v1}, Lio/netty/handler/codec/compression/FastLz;->hashFunction(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    .line 353
    .end local v4    # "hval":I
    .local v1, "hval":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "ip":I
    .local v14, "ip":I
    aput v7, v12, v1

    .line 356
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "op":I
    .local v7, "op":I
    add-int v4, v3, v5

    const/16 v5, 0x1f

    invoke-virtual {v2, v4, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 358
    move/from16 v1, p2

    move/from16 v13, v27

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_4

    .line 375
    .end local v1    # "hval":I
    .end local v10    # "len":I
    .end local v17    # "distance":J
    .end local v19    # "anchor":I
    .end local v20    # "matchLabel":Z
    .end local v27    # "hslot":I
    .local v13, "hslot":I
    :cond_25
    const/4 v1, 0x1

    add-int/2addr v8, v1

    .line 376
    :goto_14
    if-gt v14, v8, :cond_27

    .line 377
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "op":I
    .local v1, "op":I
    add-int v4, v3, v7

    add-int/lit8 v5, v14, 0x1

    .end local v14    # "ip":I
    .local v5, "ip":I
    add-int v7, p1, v14

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 378
    add-int/lit8 v11, v11, 0x1

    .line 379
    const/16 v4, 0x20

    if-ne v11, v4, :cond_26

    .line 380
    const/4 v11, 0x0

    .line 381
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "op":I
    .restart local v7    # "op":I
    add-int/2addr v1, v3

    const/16 v4, 0x1f

    invoke-virtual {v2, v1, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v14, v5

    goto :goto_14

    .line 379
    .end local v7    # "op":I
    .restart local v1    # "op":I
    :cond_26
    const/16 v4, 0x1f

    move v7, v1

    move v14, v5

    goto :goto_14

    .line 386
    .end local v1    # "op":I
    .end local v5    # "ip":I
    .restart local v7    # "op":I
    .restart local v14    # "ip":I
    :cond_27
    if-eqz v11, :cond_28

    .line 388
    add-int v1, v3, v7

    sub-int/2addr v1, v11

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    add-int/lit8 v4, v11, -0x1

    int-to-byte v4, v4

    invoke-virtual {v2, v1, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_15

    .line 390
    :cond_28
    add-int/lit8 v7, v7, -0x1

    .line 393
    :goto_15
    const/4 v1, 0x2

    if-ne v6, v1, :cond_29

    .line 395
    invoke-virtual/range {p3 .. p4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    const/16 v4, 0x20

    or-int/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 398
    :cond_29
    return v7
.end method

.method static decompress(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;II)I
    .locals 28
    .param p0, "input"    # Lio/netty/buffer/ByteBuf;
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I
    .param p3, "output"    # Lio/netty/buffer/ByteBuf;
    .param p4, "outOffset"    # I
    .param p5, "outLength"    # I

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual/range {p0 .. p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 413
    .local v4, "level":I
    if-eq v4, v6, :cond_1

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v5, Lio/netty/handler/codec/compression/DecompressionException;

    .line 415
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v8, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 414
    const-string v7, "invalid level: %d (expected: %d or %d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 420
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 422
    .local v7, "ip":I
    const/4 v8, 0x0

    .line 424
    .local v8, "op":I
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ip":I
    .local v9, "ip":I
    add-int v7, p1, v7

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    int-to-long v10, v7

    .line 426
    .local v10, "ctrl":J
    const/4 v7, 0x1

    .line 429
    .local v7, "loop":I
    :goto_1
    move v12, v8

    .line 431
    .local v12, "ref":I
    shr-long v13, v10, v5

    .line 433
    .local v13, "len":J
    const-wide/16 v15, 0x1f

    and-long/2addr v15, v10

    const/16 v17, 0x8

    shl-long v15, v15, v17

    .line 435
    .local v15, "ofs":J
    const-wide/16 v18, 0x20

    cmp-long v18, v10, v18

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x1

    if-ltz v18, :cond_d

    .line 436
    sub-long v13, v13, v22

    .line 438
    int-to-long v5, v12

    sub-long/2addr v5, v15

    long-to-int v5, v5

    .line 441
    .end local v12    # "ref":I
    .local v5, "ref":I
    const-wide/16 v25, 0x6

    cmp-long v6, v13, v25

    const/16 v12, 0xff

    if-nez v6, :cond_4

    .line 442
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 444
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "ip":I
    .local v6, "ip":I
    add-int v9, p1, v9

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    move/from16 v26, v6

    move/from16 v25, v7

    .end local v6    # "ip":I
    .end local v7    # "loop":I
    .local v25, "loop":I
    .local v26, "ip":I
    int-to-long v6, v9

    add-long/2addr v13, v6

    move/from16 v9, v26

    move-wide/from16 v26, v10

    goto :goto_3

    .line 442
    .end local v25    # "loop":I
    .end local v26    # "ip":I
    .restart local v7    # "loop":I
    .restart local v9    # "ip":I
    :cond_2
    move/from16 v25, v7

    .line 447
    .end local v7    # "loop":I
    .restart local v25    # "loop":I
    :goto_2
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "ip":I
    .restart local v6    # "ip":I
    add-int v7, p1, v9

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v7

    .line 448
    .local v7, "code":I
    move-wide/from16 v26, v10

    .end local v10    # "ctrl":J
    .local v26, "ctrl":J
    int-to-long v9, v7

    add-long/2addr v13, v9

    .line 449
    move v9, v6

    if-eq v7, v12, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v10, v26

    goto :goto_2

    .line 441
    .end local v6    # "ip":I
    .end local v25    # "loop":I
    .end local v26    # "ctrl":J
    .local v7, "loop":I
    .restart local v9    # "ip":I
    .restart local v10    # "ctrl":J
    :cond_4
    move/from16 v25, v7

    move-wide/from16 v26, v10

    .line 452
    .end local v7    # "loop":I
    .end local v10    # "ctrl":J
    .restart local v25    # "loop":I
    .restart local v26    # "ctrl":J
    :goto_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 454
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "ip":I
    .restart local v6    # "ip":I
    add-int v7, p1, v9

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v7

    sub-int/2addr v5, v7

    move/from16 v17, v4

    goto :goto_4

    .line 456
    .end local v6    # "ip":I
    .restart local v9    # "ip":I
    :cond_5
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "ip":I
    .restart local v6    # "ip":I
    add-int v7, p1, v9

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v7

    .line 457
    .local v7, "code":I
    sub-int/2addr v5, v7

    .line 462
    if-ne v7, v12, :cond_6

    const-wide/16 v9, 0x1f00

    cmp-long v9, v15, v9

    if-nez v9, :cond_6

    .line 463
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "ip":I
    .restart local v9    # "ip":I
    add-int v6, p1, v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    int-to-long v10, v6

    .line 464
    .end local v15    # "ofs":J
    .local v10, "ofs":J
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "ip":I
    .restart local v6    # "ip":I
    add-int v9, p1, v9

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    move/from16 v17, v4

    move v12, v5

    .end local v4    # "level":I
    .end local v5    # "ref":I
    .restart local v12    # "ref":I
    .local v17, "level":I
    int-to-long v4, v9

    add-long v15, v10, v4

    .line 466
    .end local v10    # "ofs":J
    .restart local v15    # "ofs":J
    int-to-long v4, v8

    sub-long/2addr v4, v15

    const-wide/16 v9, 0x1fff

    sub-long/2addr v4, v9

    long-to-int v5, v4

    .end local v12    # "ref":I
    .restart local v5    # "ref":I
    goto :goto_4

    .line 462
    .end local v17    # "level":I
    .restart local v4    # "level":I
    :cond_6
    move/from16 v17, v4

    move v12, v5

    .line 471
    .end local v4    # "level":I
    .end local v5    # "ref":I
    .end local v7    # "code":I
    .restart local v12    # "ref":I
    .restart local v17    # "level":I
    move v5, v12

    .end local v12    # "ref":I
    .restart local v5    # "ref":I
    :goto_4
    int-to-long v9, v8

    add-long/2addr v9, v13

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    int-to-long v11, v3

    cmp-long v4, v9, v11

    if-lez v4, :cond_7

    .line 472
    return v21

    .line 478
    :cond_7
    add-int/lit8 v4, v5, -0x1

    if-gez v4, :cond_8

    .line 479
    return v21

    .line 482
    :cond_8
    if-ge v6, v1, :cond_9

    .line 483
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "ip":I
    .local v4, "ip":I
    add-int v6, p1, v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    int-to-long v10, v6

    move v6, v4

    move/from16 v7, v25

    .end local v26    # "ctrl":J
    .local v10, "ctrl":J
    goto :goto_5

    .line 485
    .end local v4    # "ip":I
    .end local v10    # "ctrl":J
    .restart local v6    # "ip":I
    .restart local v26    # "ctrl":J
    :cond_9
    const/4 v7, 0x0

    move-wide/from16 v10, v26

    .line 488
    .end local v25    # "loop":I
    .end local v26    # "ctrl":J
    .local v7, "loop":I
    .restart local v10    # "ctrl":J
    :goto_5
    if-ne v5, v8, :cond_b

    .line 491
    add-int v4, p4, v5

    const/16 v24, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    .line 492
    .local v4, "b":B
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "op":I
    .local v9, "op":I
    add-int v8, p4, v8

    invoke-virtual {v2, v8, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 493
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "op":I
    .restart local v8    # "op":I
    add-int v9, p4, v9

    invoke-virtual {v2, v9, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 494
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "op":I
    .restart local v9    # "op":I
    add-int v8, p4, v8

    invoke-virtual {v2, v8, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 495
    :goto_6
    cmp-long v8, v13, v19

    if-eqz v8, :cond_a

    .line 496
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "op":I
    .restart local v8    # "op":I
    add-int v9, p4, v9

    invoke-virtual {v2, v9, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 497
    sub-long v13, v13, v22

    move v9, v8

    goto :goto_6

    .line 499
    .end local v4    # "b":B
    .end local v8    # "op":I
    .restart local v9    # "op":I
    :cond_a
    move v8, v9

    move v9, v6

    goto/16 :goto_9

    .line 501
    .end local v9    # "op":I
    .restart local v8    # "op":I
    :cond_b
    const/16 v24, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 504
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "op":I
    .local v4, "op":I
    add-int v8, p4, v8

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "ref":I
    .local v9, "ref":I
    add-int v5, p4, v5

    invoke-virtual {v2, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    invoke-virtual {v2, v8, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 505
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .local v5, "op":I
    add-int v4, p4, v4

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ref":I
    .local v8, "ref":I
    add-int v9, p4, v9

    invoke-virtual {v2, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    invoke-virtual {v2, v4, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 506
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "op":I
    .restart local v4    # "op":I
    add-int v5, p4, v5

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ref":I
    .restart local v9    # "ref":I
    add-int v8, p4, v8

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    invoke-virtual {v2, v5, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 508
    :goto_7
    cmp-long v5, v13, v19

    if-eqz v5, :cond_c

    .line 509
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int v4, p4, v4

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ref":I
    .restart local v8    # "ref":I
    add-int v9, p4, v9

    invoke-virtual {v2, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    invoke-virtual {v2, v4, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 510
    sub-long v13, v13, v22

    move v4, v5

    move v9, v8

    goto :goto_7

    .line 508
    .end local v5    # "op":I
    .end local v8    # "ref":I
    .restart local v4    # "op":I
    .restart local v9    # "ref":I
    :cond_c
    move v8, v4

    move v9, v6

    goto/16 :goto_9

    .line 514
    .end local v6    # "ip":I
    .end local v17    # "level":I
    .local v4, "level":I
    .local v8, "op":I
    .local v9, "ip":I
    .restart local v12    # "ref":I
    :cond_d
    move/from16 v17, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v10

    .end local v4    # "level":I
    .end local v7    # "loop":I
    .end local v10    # "ctrl":J
    .restart local v17    # "level":I
    .restart local v25    # "loop":I
    .restart local v26    # "ctrl":J
    add-long v10, v26, v22

    .line 516
    .end local v26    # "ctrl":J
    .restart local v10    # "ctrl":J
    int-to-long v4, v8

    add-long/2addr v4, v10

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 517
    return v21

    .line 519
    :cond_e
    int-to-long v4, v9

    add-long/2addr v4, v10

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_f

    .line 520
    return v21

    .line 524
    :cond_f
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "op":I
    .local v4, "op":I
    add-int v5, p4, v8

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "ip":I
    .restart local v6    # "ip":I
    add-int v7, p1, v9

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 526
    sub-long v10, v10, v22

    :goto_8
    cmp-long v5, v10, v19

    if-eqz v5, :cond_10

    .line 528
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int v4, p4, v4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ip":I
    .local v7, "ip":I
    add-int v6, p1, v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    invoke-virtual {v2, v4, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 526
    sub-long v10, v10, v22

    move v4, v5

    move v6, v7

    goto :goto_8

    .line 531
    .end local v5    # "op":I
    .end local v7    # "ip":I
    .restart local v4    # "op":I
    .restart local v6    # "ip":I
    :cond_10
    if-ge v6, v1, :cond_11

    move/from16 v21, v24

    :cond_11
    move/from16 v5, v21

    .line 532
    .end local v25    # "loop":I
    .local v5, "loop":I
    if-eqz v5, :cond_12

    .line 534
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ip":I
    .restart local v7    # "ip":I
    add-int v6, p1, v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    int-to-long v8, v6

    move-wide v10, v8

    move v8, v4

    move v9, v7

    move v7, v5

    .end local v10    # "ctrl":J
    .local v8, "ctrl":J
    goto :goto_9

    .line 532
    .end local v7    # "ip":I
    .end local v8    # "ctrl":J
    .restart local v6    # "ip":I
    .restart local v10    # "ctrl":J
    :cond_12
    move v8, v4

    move v7, v5

    move v9, v6

    .line 539
    .end local v4    # "op":I
    .end local v5    # "loop":I
    .end local v6    # "ip":I
    .end local v12    # "ref":I
    .end local v13    # "len":J
    .end local v15    # "ofs":J
    .local v7, "loop":I
    .local v8, "op":I
    .restart local v9    # "ip":I
    :goto_9
    if-nez v7, :cond_13

    .line 542
    return v8

    .line 539
    :cond_13
    move/from16 v4, v17

    move/from16 v6, v24

    const/4 v5, 0x5

    goto/16 :goto_1
.end method

.method private static hashFunction(Lio/netty/buffer/ByteBuf;I)I
    .locals 3
    .param p0, "p"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 546
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 547
    .local v0, "v":I
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    shr-int/lit8 v2, v0, 0x3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 548
    and-int/lit16 v0, v0, 0x1fff

    .line 549
    return v0
.end method

.method private static readU16(Lio/netty/buffer/ByteBuf;I)I
    .locals 2
    .param p0, "data"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 553
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    return v0

    .line 556
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
