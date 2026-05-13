.class final Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
.super Ljava/lang/Object;
.source "BrotliEncoder.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/BrotliEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Writer"
.end annotation


# instance fields
.field private final brotliEncoderChannel:Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;

.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private isClosed:Z

.field private writableBuffer:Lio/netty/buffer/ByteBuf;


# direct methods
.method private constructor <init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "parameters"    # Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;

    invoke-direct {v0, p0, p1}, Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;-><init>(Ljava/nio/channels/WritableByteChannel;Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->brotliEncoderChannel:Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;

    .line 194
    iput-object p2, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/BrotliEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;
    .param p2, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "x2"    # Lio/netty/handler/codec/compression/BrotliEncoder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/compression/BrotliEncoder$Writer;Lio/netty/buffer/ByteBuf;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->encode(Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/codec/compression/BrotliEncoder$Writer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .line 185
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->writableBuffer:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method private allocate(Z)V
    .locals 1
    .param p1, "preferDirect"    # Z

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->writableBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->writableBuffer:Lio/netty/buffer/ByteBuf;

    .line 225
    :goto_0
    return-void
.end method

.method private encode(Lio/netty/buffer/ByteBuf;Z)V
    .locals 3
    .param p1, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p2, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->allocate(Z)V

    .line 208
    invoke-static {p1}, Lio/netty/handler/codec/compression/CompressionUtil;->safeReadableNioBuffer(Lio/netty/buffer/ByteBuf;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 209
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 210
    .local v1, "position":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->brotliEncoderChannel:Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;

    invoke-virtual {v2, v0}, Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 211
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 212
    iget-object v2, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->brotliEncoderChannel:Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;

    invoke-virtual {v2}, Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "nioBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "position":I
    nop

    .line 217
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 215
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 243
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 245
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;-><init>(Lio/netty/handler/codec/compression/BrotliEncoder$Writer;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public finish(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->isClosed:Z

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->allocate(Z)V

    .line 263
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->brotliEncoderChannel:Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;

    invoke-virtual {v1}, Lcom/aayushatharva/brotli4j/encoder/BrotliEncoderChannel;->close()V

    .line 264
    iput-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->isClosed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    nop

    .line 274
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->writableBuffer:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0, v1, p1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 270
    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->writableBuffer:Lio/netty/buffer/ByteBuf;

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 271
    return-void

    .line 276
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->writableBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0

    .line 230
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
