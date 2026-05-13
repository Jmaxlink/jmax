.class public Lio/netty/handler/codec/compression/FastLzFrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "FastLzFrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private final level:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;-><init>(ILjava/util/zip/Checksum;)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;-><init>(ILjava/util/zip/Checksum;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/util/zip/Checksum;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "checksum"    # Ljava/util/zip/Checksum;

    .line 100
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 101
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 102
    const-string v1, "level: %d (expected: %d or %d or %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1
    :goto_0
    iput p1, p0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->level:I

    .line 106
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 107
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "validateChecksums"    # Z

    .line 86
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;-><init>(ILjava/util/zip/Checksum;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 17
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v9, v0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 114
    .local v9, "checksum":Lio/netty/handler/codec/compression/ByteBufChecksum;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    .line 118
    .local v10, "idx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const v2, 0xffff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 120
    .local v11, "length":I
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v12

    .line 121
    .local v12, "outputIdx":I
    const v1, 0x464c5a

    invoke-virtual {v8, v12, v1}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 122
    add-int/lit8 v1, v12, 0x4

    const/4 v13, 0x0

    if-eqz v9, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    add-int v14, v1, v2

    .line 126
    .local v14, "outputOffset":I
    const/16 v1, 0x20

    if-ge v11, v1, :cond_3

    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "blockType":B
    add-int/lit8 v2, v14, 0x2

    add-int/2addr v2, v11

    invoke-virtual {v8, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 130
    add-int/lit8 v2, v14, 0x2

    .line 132
    .local v2, "outputPtr":I
    if-eqz v9, :cond_2

    .line 133
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 134
    invoke-virtual {v9, v7, v10, v11}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 135
    add-int/lit8 v3, v12, 0x4

    invoke-virtual {v9}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v8, v3, v4}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 137
    :cond_2
    invoke-virtual {v8, v2, v7, v10, v11}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 138
    move v2, v11

    .line 139
    .local v2, "chunkLength":I
    goto :goto_2

    .line 141
    .end local v1    # "blockType":B
    .end local v2    # "chunkLength":I
    :cond_3
    if-eqz v9, :cond_4

    .line 142
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 143
    invoke-virtual {v9, v7, v10, v11}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 144
    add-int/lit8 v1, v12, 0x4

    invoke-virtual {v9}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v8, v1, v2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 147
    :cond_4
    invoke-static {v11}, Lio/netty/handler/codec/compression/FastLz;->calculateOutputBufferLength(I)I

    move-result v15

    .line 148
    .local v15, "maxOutputLength":I
    add-int/lit8 v1, v14, 0x4

    add-int/2addr v1, v15

    invoke-virtual {v8, v1}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 149
    add-int/lit8 v16, v14, 0x4

    .line 150
    .local v16, "outputPtr":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    iget v6, v0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->level:I

    move-object/from16 v1, p2

    move v3, v11

    move-object/from16 v4, p3

    move/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/compression/FastLz;->compress(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;II)I

    move-result v1

    .line 152
    .local v1, "compressedLength":I
    if-ge v1, v11, :cond_5

    .line 153
    const/4 v2, 0x1

    .line 154
    .local v2, "blockType":B
    move v3, v1

    .line 156
    .local v3, "chunkLength":I
    invoke-virtual {v8, v14, v3}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 157
    add-int/lit8 v14, v14, 0x2

    move v1, v2

    move v2, v3

    goto :goto_2

    .line 159
    .end local v2    # "blockType":B
    .end local v3    # "chunkLength":I
    :cond_5
    const/4 v2, 0x0

    .line 160
    .restart local v2    # "blockType":B
    add-int/lit8 v3, v14, 0x2

    invoke-virtual {v8, v3, v7, v10, v11}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 161
    move v3, v11

    move v1, v2

    move v2, v3

    .line 164
    .end local v15    # "maxOutputLength":I
    .end local v16    # "outputPtr":I
    .local v1, "blockType":B
    .local v2, "chunkLength":I
    :goto_2
    invoke-virtual {v8, v14, v11}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 166
    add-int/lit8 v3, v12, 0x3

    if-eqz v9, :cond_6

    const/16 v13, 0x10

    :cond_6
    or-int v4, v1, v13

    invoke-virtual {v8, v3, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 168
    add-int/lit8 v3, v14, 0x2

    add-int/2addr v3, v2

    invoke-virtual {v8, v3}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 169
    invoke-virtual {v7, v11}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 170
    .end local v1    # "blockType":B
    .end local v2    # "chunkLength":I
    .end local v10    # "idx":I
    .end local v11    # "length":I
    .end local v12    # "outputIdx":I
    .end local v14    # "outputOffset":I
    goto/16 :goto_0
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
