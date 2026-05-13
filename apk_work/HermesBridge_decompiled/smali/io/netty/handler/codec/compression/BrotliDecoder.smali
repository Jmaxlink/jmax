.class public final Lio/netty/handler/codec/compression/BrotliDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "BrotliDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/BrotliDecoder$State;
    }
.end annotation


# instance fields
.field private decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

.field private destroyed:Z

.field private final inputBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    :try_start_0
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->ensureAvailability()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    nop

    .line 46
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/BrotliDecoder;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "inputBufferSize"    # I

    .line 63
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 64
    const-string v0, "inputBufferSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->inputBufferSize:I

    .line 65
    return-void
.end method

.method private decompress(Lio/netty/buffer/ByteBuf;Ljava/util/List;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/compression/BrotliDecoder$State;
    .locals 3
    .param p1, "input"    # Lio/netty/buffer/ByteBuf;
    .param p3, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/netty/buffer/ByteBufAllocator;",
            ")",
            "Lio/netty/handler/codec/compression/BrotliDecoder$State;"
        }
    .end annotation

    .line 77
    .local p2, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/BrotliDecoder$1;->$SwitchMap$com$aayushatharva$brotli4j$decoder$DecoderJNI$Status:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->getStatus()Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    sget-object v0, Lio/netty/handler/codec/compression/BrotliDecoder$State;->ERROR:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    return-object v0

    .line 101
    :pswitch_0
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/BrotliDecoder;->pull(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->hasOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/BrotliDecoder;->pull(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lio/netty/handler/codec/compression/BrotliDecoder$State;->NEEDS_MORE_INPUT:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    invoke-static {p1, v0}, Lio/netty/handler/codec/compression/BrotliDecoder;->readBytes(Lio/netty/buffer/ByteBuf;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 97
    .local v1, "readBytes":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v2, v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->push(I)V

    .line 98
    goto :goto_0

    .line 82
    .end local v0    # "decoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "readBytes":I
    :pswitch_2
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->push(I)V

    .line 83
    goto :goto_0

    .line 79
    :pswitch_3
    sget-object v0, Lio/netty/handler/codec/compression/BrotliDecoder$State;->DONE:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private destroy()V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->destroyed:Z

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->destroyed:Z

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->destroy()V

    .line 154
    :cond_0
    return-void
.end method

.method private pull(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, "nativeBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 71
    .local v1, "copy":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 72
    return-object v1
.end method

.method private static readBytes(Lio/netty/buffer/ByteBuf;Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    .local v1, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 114
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    return v0
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 171
    throw v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 3
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

    .line 126
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->destroyed:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 129
    return-void

    .line 132
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    return-void

    .line 137
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lio/netty/handler/codec/compression/BrotliDecoder;->decompress(Lio/netty/buffer/ByteBuf;Ljava/util/List;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/compression/BrotliDecoder$State;

    move-result-object v0

    .line 138
    .local v0, "state":Lio/netty/handler/codec/compression/BrotliDecoder$State;
    sget-object v1, Lio/netty/handler/codec/compression/BrotliDecoder$State;->DONE:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    if-ne v0, v1, :cond_2

    .line 139
    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V

    goto :goto_0

    .line 140
    :cond_2
    sget-object v1, Lio/netty/handler/codec/compression/BrotliDecoder$State;->ERROR:Lio/netty/handler/codec/compression/BrotliDecoder$State;

    if-eq v0, v1, :cond_3

    .line 146
    .end local v0    # "state":Lio/netty/handler/codec/compression/BrotliDecoder$State;
    :goto_0
    nop

    .line 147
    return-void

    .line 141
    .restart local v0    # "state":Lio/netty/handler/codec/compression/BrotliDecoder$State;
    :cond_3
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "Brotli stream corrupted"

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "state":Lio/netty/handler/codec/compression/BrotliDecoder$State;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V

    .line 145
    throw v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    iget v1, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->inputBufferSize:I

    invoke-direct {v0, v1}, Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/BrotliDecoder;->decoder:Lcom/aayushatharva/brotli4j/decoder/DecoderJNI$Wrapper;

    .line 122
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/compression/BrotliDecoder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 162
    throw v0
.end method
