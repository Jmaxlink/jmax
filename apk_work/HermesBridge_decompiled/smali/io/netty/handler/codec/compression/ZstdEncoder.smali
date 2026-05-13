.class public final Lio/netty/handler/codec/compression/ZstdEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "ZstdEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private buffer:Lio/netty/buffer/ByteBuf;

.field private final compressionLevel:I

.field private final maxEncodeSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    const/high16 v0, 0x10000

    const/high16 v1, 0x2000000

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "compressionLevel"    # I

    .line 60
    const/high16 v0, 0x10000

    const/high16 v1, 0x2000000

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "blockSize"    # I
    .param p2, "maxEncodeSize"    # I

    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    .line 72
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "blockSize"    # I
    .param p3, "maxEncodeSize"    # I

    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    .line 84
    const/16 v0, 0x16

    const-string v1, "compressionLevel"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->compressionLevel:I

    .line 85
    const-string v0, "blockSize"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->blockSize:I

    .line 86
    const-string v0, "maxEncodeSize"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->maxEncodeSize:I

    .line 87
    return-void
.end method

.method private flushBufferedData(Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 138
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 139
    .local v0, "flushableBytes":I
    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->compressBound(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 144
    .local v1, "bufSize":I
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 145
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    .line 148
    .local v2, "idx":I
    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 149
    .local v3, "outNioBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    iget-object v5, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 151
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->compressionLevel:I

    .line 149
    invoke-static {v3, v4, v5}, Lcom/github/luben/zstd/Zstd;->compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 155
    .local v3, "compressedLength":I
    nop

    .line 157
    add-int v4, v2, v3

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 158
    iget-object v4, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 159
    return-void

    .line 153
    .end local v3    # "compressedLength":I
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lio/netty/handler/codec/compression/CompressionException;

    invoke-direct {v4, v3}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferDirect"    # Z

    .line 91
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    .local v0, "remaining":I
    if-ltz v0, :cond_2

    .line 103
    const-wide/16 v1, 0x0

    .line 104
    .local v1, "bufferSize":J
    :goto_0
    if-lez v0, :cond_0

    .line 105
    iget v3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->blockSize:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 106
    .local v3, "curSize":I
    sub-int/2addr v0, v3

    .line 107
    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/github/luben/zstd/Zstd;->compressBound(J)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 108
    .end local v3    # "curSize":I
    goto :goto_0

    .line 110
    :cond_0
    iget v3, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->maxEncodeSize:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 115
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    long-to-int v4, v1

    invoke-interface {v3, v4}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    .line 111
    :cond_1
    new-instance v3, Lio/netty/handler/codec/EncoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requested encode buffer size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes) exceeds the maximum allowable size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->maxEncodeSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v1    # "bufferSize":J
    :cond_2
    new-instance v1, Lio/netty/handler/codec/EncoderException;

    const-string v2, "too much data to allocate a buffer for compression"

    invoke-direct {v1, v2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "remaining":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline,or has been removed,buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/ZstdEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;

    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 127
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    move v2, v1

    .local v2, "length":I
    if-lez v1, :cond_1

    .line 128
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 129
    .local v1, "nextChunkSize":I
    invoke-virtual {p2, v0, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 131
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/ZstdEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 134
    .end local v1    # "nextChunkSize":I
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    return-void

    .line 121
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local v2    # "length":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline,or has been removed,buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/ZstdEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 163
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/handler/codec/compression/ZstdEncoder;->isPreferDirect()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/ZstdEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 165
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/ZstdEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 166
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 168
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 169
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 173
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->blockSize:I

    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 174
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 175
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToByteEncoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 180
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/compression/ZstdEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 184
    :cond_0
    return-void
.end method
