.class final enum Lio/netty/handler/ssl/SslHandler$SslEngineType$2;
.super Lio/netty/handler/ssl/SslHandler$SslEngineType;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler$SslEngineType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V
    .locals 6
    .param p3, "wantsDirectBuffer"    # Z
    .param p4, "cumulator"    # Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 255
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler$SslEngineType;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;Lio/netty/handler/ssl/SslHandler$1;)V

    return-void
.end method


# virtual methods
.method allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "pendingBytes"    # I
    .param p4, "numComponents"    # I

    .line 284
    nop

    .line 285
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    invoke-virtual {v0, p3, p4}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->calculateOutNetBufSize(II)I

    move-result v0

    .line 284
    invoke-interface {p2, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I
    .locals 0
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "guess"    # I

    .line 296
    return p2
.end method

.method calculateRequiredOutBufSpace(Lio/netty/handler/ssl/SslHandler;II)I
    .locals 1
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "pendingBytes"    # I
    .param p3, "numComponents"    # I

    .line 290
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    .line 291
    invoke-virtual {v0, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->calculateRequiredOutBufSpace(II)I

    move-result v0

    .line 290
    return v0
.end method

.method jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "len"    # I
    .param p4, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 258
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    .line 259
    .local v0, "nioBufferCount":I
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 261
    .local v1, "writerIndex":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 266
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v5

    invoke-static {p4, v1, v5}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 267
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    check-cast v4, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    .line 268
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    invoke-virtual {p2, v5, p3}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 269
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 267
    invoke-virtual {v4, v5, v6}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v2, v5, v3

    .line 272
    goto :goto_0

    .line 271
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v4

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v2, v5, v3

    .line 272
    throw v4

    .line 274
    :cond_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-static {p2, v3, p3}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 275
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    invoke-static {p4, v1, v4}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 274
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 277
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 278
    return-object v4
.end method
