.class public abstract Lio/netty/channel/unix/SocketWritableByteChannel;
.super Ljava/lang/Object;
.source "SocketWritableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# instance fields
.field protected final fd:Lio/netty/channel/unix/FileDescriptor;


# direct methods
.method protected constructor <init>(Lio/netty/channel/unix/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/unix/FileDescriptor;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "fd"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/FileDescriptor;

    iput-object v0, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V

    .line 83
    return-void
.end method

.method public final isOpen()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 40
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 41
    .local v1, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Lio/netty/channel/unix/SocketWritableByteChannel;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .local v2, "written":I
    goto :goto_1

    .line 44
    .end local v2    # "written":I
    :cond_0
    sub-int v2, v1, v0

    .line 45
    .local v2, "readableBytes":I
    const/4 v3, 0x0

    .line 47
    .local v3, "buffer":Lio/netty/buffer/ByteBuf;
    if-nez v2, :cond_1

    .line 48
    :try_start_0
    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    move-object v3, v4

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/unix/SocketWritableByteChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    .line 51
    .local v4, "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v4}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    invoke-interface {v4, v2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v3, v5

    .line 55
    if-nez v3, :cond_3

    .line 56
    invoke-static {v2}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v3, v5

    .line 60
    .end local v4    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 61
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 62
    .local v4, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lio/netty/channel/unix/SocketWritableByteChannel;->write(Ljava/nio/ByteBuffer;II)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 64
    .local v4, "written":I
    if-eqz v3, :cond_4

    .line 65
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 69
    .end local v2    # "readableBytes":I
    .end local v3    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_4
    move v2, v4

    .end local v4    # "written":I
    .local v2, "written":I
    :goto_1
    if-lez v2, :cond_5

    .line 70
    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    :cond_5
    return v2

    .line 64
    .local v2, "readableBytes":I
    .restart local v3    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    .line 65
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 67
    :cond_6
    throw v4
.end method

.method protected write(Ljava/nio/ByteBuffer;II)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/netty/channel/unix/SocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/unix/FileDescriptor;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method
