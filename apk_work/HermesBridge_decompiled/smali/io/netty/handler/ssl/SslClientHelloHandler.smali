.class public abstract Lio/netty/handler/ssl/SslClientHelloHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SslClientHelloHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/ByteToMessageDecoder;",
        "Lio/netty/channel/ChannelOutboundHandler;"
    }
.end annotation


# static fields
.field public static final MAX_CLIENT_HELLO_LENGTH:I = 0xffffff

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private handshakeBuffer:Lio/netty/buffer/ByteBuf;

.field private handshakeFailed:Z

.field private final maxClientHelloLength:I

.field private readPending:Z

.field private suppressRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    nop

    .line 48
    const-class v0, Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    const v0, 0xffffff

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;-><init>(I)V

    .line 58
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3
    .param p1, "maxClientHelloLength"    # I

    .line 60
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 63
    nop

    .line 64
    const/4 v0, 0x0

    const v1, 0xffffff

    const-string v2, "maxClientHelloLength"

    invoke-static {p1, v0, v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->maxClientHelloLength:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;

    .line 39
    invoke-static {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method static synthetic access$102(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslClientHelloHandler;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    return p1
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 39
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    return v0
.end method

.method static synthetic access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslClientHelloHandler;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    return p1
.end method

.method private releaseHandshakeBuffer()V
    .locals 1

    .line 207
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 209
    return-void
.end method

.method private static releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 212
    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 215
    :cond_0
    return-void
.end method

.method private select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "clientHello"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 221
    .local v0, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V

    goto :goto_0

    .line 224
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    .line 225
    move-object v1, p2

    .line 226
    .local v1, "finalClientHello":Lio/netty/buffer/ByteBuf;
    new-instance v2, Lio/netty/handler/ssl/SslClientHelloHandler$1;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/handler/ssl/SslClientHelloHandler$1;-><init>(Lio/netty/handler/ssl/SslClientHelloHandler;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 p2, 0x0

    .line 256
    .end local v1    # "finalClientHello":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 257
    goto :goto_1

    .line 253
    .end local v0    # "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    :catchall_0
    move-exception v0

    .line 254
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 257
    nop

    .line 258
    :goto_1
    return-void

    .line 256
    :catchall_1
    move-exception v0

    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 257
    throw v0
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 311
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 312
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 328
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 318
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 16
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

    .line 69
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-boolean v0, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    if-nez v0, :cond_f

    iget-boolean v0, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeFailed:Z

    if-nez v0, :cond_f

    .line 71
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 72
    .local v0, "readerIndex":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 73
    .local v5, "readableBytes":I
    const/4 v6, -0x1

    .line 76
    .local v6, "handshakeLength":I
    :goto_0
    const/4 v7, 0x5

    if-lt v5, v7, :cond_d

    .line 77
    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v8

    .line 78
    .local v8, "contentType":I
    const/4 v9, -0x1

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 102
    :pswitch_0
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v11

    .line 104
    .local v11, "majorVersion":I
    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    .line 105
    add-int/lit8 v12, v0, 0x3

    invoke-virtual {v3, v12}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v12

    add-int/2addr v12, v7

    .line 108
    .local v12, "packetLength":I
    if-ge v5, v12, :cond_0

    .line 110
    return-void

    .line 111
    :cond_0
    if-ne v12, v7, :cond_1

    .line 112
    invoke-direct {v1, v2, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 113
    return-void

    .line 116
    :cond_1
    add-int v13, v0, v12

    .line 119
    .local v13, "endOffset":I
    if-ne v6, v9, :cond_8

    .line 120
    add-int/lit8 v9, v0, 0x4

    if-le v9, v13, :cond_2

    .line 122
    return-void

    .line 125
    :cond_2
    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v3, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    .line 130
    .local v9, "handshakeType":I
    if-eq v9, v10, :cond_3

    .line 131
    invoke-direct {v1, v2, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 132
    return-void

    .line 137
    :cond_3
    add-int/lit8 v14, v0, 0x5

    add-int/2addr v14, v10

    invoke-virtual {v3, v14}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v14

    move v6, v14

    .line 140
    iget v14, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->maxClientHelloLength:I

    if-le v6, v14, :cond_5

    iget v14, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->maxClientHelloLength:I

    if-nez v14, :cond_4

    goto :goto_1

    .line 141
    :cond_4
    new-instance v7, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ClientHello length exceeds "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->maxClientHelloLength:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    .line 144
    .local v7, "e":Lio/netty/handler/codec/TooLongFrameException;
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v14

    invoke-virtual {v3, v14}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 145
    new-instance v14, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v14, v7}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v14}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 146
    invoke-static {v2, v7, v10}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V

    .line 147
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v7

    .line 150
    .end local v7    # "e":Lio/netty/handler/codec/TooLongFrameException;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 151
    add-int/lit8 v12, v12, -0x4

    .line 153
    add-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v7

    if-gt v10, v12, :cond_6

    .line 156
    add-int/2addr v0, v7

    .line 157
    invoke-virtual {v3, v0, v6}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 158
    return-void

    .line 160
    :cond_6
    iget-object v7, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    if-nez v7, :cond_7

    .line 161
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    invoke-interface {v7, v6}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    iput-object v7, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_2

    .line 164
    :cond_7
    iget-object v7, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 170
    .end local v9    # "handshakeType":I
    :cond_8
    :goto_2
    iget-object v7, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    add-int/lit8 v9, v0, 0x5

    add-int/lit8 v10, v12, -0x5

    invoke-virtual {v7, v3, v9, v10}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 172
    add-int/2addr v0, v12

    .line 173
    sub-int/2addr v5, v12

    .line 174
    iget-object v7, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    if-gt v6, v7, :cond_9

    .line 175
    iget-object v7, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v6}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 176
    .local v7, "clientHello":Lio/netty/buffer/ByteBuf;
    iput-object v4, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 178
    invoke-direct {v1, v2, v7}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 179
    return-void

    .line 189
    .end local v7    # "clientHello":Lio/netty/buffer/ByteBuf;
    .end local v8    # "contentType":I
    .end local v11    # "majorVersion":I
    .end local v12    # "packetLength":I
    .end local v13    # "endOffset":I
    :cond_9
    goto/16 :goto_0

    .line 82
    .restart local v8    # "contentType":I
    :pswitch_1
    invoke-static {v3, v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v7

    .line 85
    .local v7, "len":I
    const/4 v11, -0x2

    if-eq v7, v11, :cond_b

    .line 94
    if-ne v7, v9, :cond_a

    .line 96
    return-void

    .line 99
    :cond_a
    invoke-direct {v1, v2, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 100
    return-void

    .line 86
    :cond_b
    iput-boolean v10, v1, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeFailed:Z

    .line 87
    new-instance v9, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not an SSL/TLS record: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 88
    invoke-static/range {p2 .. p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, "e":Lio/netty/handler/ssl/NotSslRecordException;
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual {v3, v11}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 90
    new-instance v11, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v11, v9}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v11}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 91
    invoke-static {v2, v9, v10}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V

    .line 92
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v9

    .line 186
    .end local v7    # "len":I
    .end local v9    # "e":Lio/netty/handler/ssl/NotSslRecordException;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_c
    :goto_3
    invoke-direct {v1, v2, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Lio/netty/handler/ssl/NotSslRecordException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/netty/handler/codec/TooLongFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-void

    .line 202
    .end local v0    # "readerIndex":I
    .end local v5    # "readableBytes":I
    .end local v6    # "handshakeLength":I
    .end local v8    # "contentType":I
    :cond_d
    goto :goto_4

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 199
    sget-object v5, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected client hello packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_e
    invoke-direct {v1, v2, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    goto :goto_4

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Lio/netty/handler/codec/TooLongFrameException;
    throw v0

    .line 190
    .end local v0    # "e":Lio/netty/handler/codec/TooLongFrameException;
    :catch_2
    move-exception v0

    .line 192
    .local v0, "e":Lio/netty/handler/ssl/NotSslRecordException;
    throw v0

    .line 204
    .end local v0    # "e":Lio/netty/handler/ssl/NotSslRecordException;
    :cond_f
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 333
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 323
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 343
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-direct {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseHandshakeBuffer()V

    .line 264
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 265
    return-void
.end method

.method protected abstract lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    goto :goto_0

    .line 305
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 307
    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 338
    return-void
.end method
