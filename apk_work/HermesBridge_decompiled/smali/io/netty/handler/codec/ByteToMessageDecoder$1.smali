.class final Lio/netty/handler/codec/ByteToMessageDecoder$1;
.super Ljava/lang/Object;
.source "ByteToMessageDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cumulate(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "in"    # Lio/netty/buffer/ByteBuf;

    .line 84
    if-ne p2, p3, :cond_0

    .line 86
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 87
    return-object p2

    .line 89
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isContiguous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 92
    return-object p3

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 96
    .local v0, "required":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->maxWritableBytes()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 97
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->maxFastWritableBytes()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 98
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p2, p3, v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 106
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    nop

    .line 111
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 107
    return-object p2

    .line 103
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->expandCumulation(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 103
    return-object v1

    .line 111
    .end local v0    # "required":I
    :catchall_0
    move-exception v0

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 112
    throw v0
.end method
