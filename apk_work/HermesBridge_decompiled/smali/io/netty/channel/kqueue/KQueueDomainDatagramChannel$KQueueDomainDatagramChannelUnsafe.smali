.class final Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "KQueueDomainDatagramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KQueueDomainDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    const-class v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    .line 238
    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    return-void
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 11
    .param p1, "allocHandle"    # Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 242
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object v0

    .line 244
    .local v0, "config":Lio/netty/channel/unix/DomainDatagramChannelConfig;
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->clearReadFilter0()V

    .line 246
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 249
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/unix/DomainDatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 250
    .local v2, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 251
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->readReadyBefore()V

    .line 253
    const/4 v3, 0x0

    .line 255
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 257
    .local v4, "byteBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-object v5, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-virtual {v5}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->isConnected()Z

    move-result v5

    .line 259
    .local v5, "connected":Z
    :cond_1
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v4, v6

    .line 260
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 263
    if-eqz v5, :cond_3

    .line 264
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    invoke-virtual {v6, v4}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v6

    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 265
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v6

    if-gtz v6, :cond_2

    .line 267
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 268
    goto/16 :goto_2

    .line 270
    :cond_2
    new-instance v6, Lio/netty/channel/unix/DomainDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Lio/netty/channel/unix/DomainSocketAddress;

    .line 271
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v6, v4, v7, v8}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;Lio/netty/channel/unix/DomainSocketAddress;)V

    .local v6, "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    goto :goto_1

    .line 274
    .end local v6    # "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    :cond_3
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    iget-object v6, v6, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v7

    .line 277
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v10

    .line 276
    invoke-virtual {v6, v7, v8, v9, v10}, Lio/netty/channel/kqueue/BsdSocket;->recvFromAddressDomainSocket(JII)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v6

    .local v6, "remoteAddress":Lio/netty/channel/unix/DomainDatagramSocketAddress;
    goto :goto_0

    .line 279
    .end local v6    # "remoteAddress":Lio/netty/channel/unix/DomainDatagramSocketAddress;
    :cond_4
    nop

    .line 280
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    .line 279
    invoke-virtual {v4, v6, v7}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 281
    .local v6, "nioData":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    iget-object v7, v7, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 282
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lio/netty/channel/kqueue/BsdSocket;->recvFromDomainSocket(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v7

    move-object v6, v7

    .line 285
    .local v6, "remoteAddress":Lio/netty/channel/unix/DomainDatagramSocketAddress;
    :goto_0
    if-nez v6, :cond_5

    .line 286
    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 287
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 288
    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual {v6}, Lio/netty/channel/unix/DomainDatagramSocketAddress;->localAddress()Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v7

    .line 291
    .local v7, "localAddress":Lio/netty/channel/unix/DomainSocketAddress;
    if-nez v7, :cond_6

    .line 292
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Lio/netty/channel/unix/DomainSocketAddress;

    move-object v7, v8

    .line 294
    :cond_6
    invoke-virtual {v6}, Lio/netty/channel/unix/DomainDatagramSocketAddress;->receivedAmount()I

    move-result v8

    invoke-virtual {p1, v8}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 295
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 297
    new-instance v8, Lio/netty/channel/unix/DomainDatagramPacket;

    invoke-direct {v8, v4, v7, v6}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;Lio/netty/channel/unix/DomainSocketAddress;)V

    move-object v6, v8

    .line 300
    .end local v7    # "localAddress":Lio/netty/channel/unix/DomainSocketAddress;
    .local v6, "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 302
    const/4 v7, 0x0

    iput-boolean v7, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->readPending:Z

    .line 303
    invoke-interface {v1, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 305
    const/4 v4, 0x0

    .line 309
    .end local v6    # "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    sget-object v6, Lio/netty/util/UncheckedBooleanSupplier;->TRUE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 315
    .end local v5    # "connected":Z
    :goto_2
    goto :goto_4

    .line 310
    :catchall_0
    move-exception v5

    .line 311
    .local v5, "t":Ljava/lang/Throwable;
    if-eqz v4, :cond_7

    .line 312
    :try_start_1
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3

    .line 324
    .end local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 314
    .restart local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_3
    move-object v3, v5

    .line 317
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_4
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 318
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 320
    if-eqz v3, :cond_8

    .line 321
    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    .end local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    :cond_8
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :goto_5
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 325
    throw v4

    .line 242
    .end local v0    # "config":Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v3    # "exception":Ljava/lang/Throwable;
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
