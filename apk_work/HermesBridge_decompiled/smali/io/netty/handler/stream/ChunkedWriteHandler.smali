.class public Lio/netty/handler/stream/ChunkedWriteHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "ChunkedWriteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    nop

    .line 73
    const-class v0, Lio/netty/handler/stream/ChunkedWriteHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxPendingWrites"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    .line 86
    const-string v0, "maxPendingWrites"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/stream/ChunkedWriteHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;

    .line 70
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 70
    invoke-static {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/stream/ChunkedWriteHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .param p3, "x3"    # Z

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    return-void
.end method

.method private static closeInput(Lio/netty/handler/stream/ChunkedInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "*>;)V"
        }
    .end annotation

    .line 347
    .local p0, "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    :try_start_0
    invoke-interface {p0}, Lio/netty/handler/stream/ChunkedInput;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    sget-object v1, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a chunked input."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private discard(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 151
    nop

    :goto_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 153
    .local v0, "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    if-nez v0, :cond_0

    .line 154
    nop

    .line 189
    .end local v0    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    return-void

    .line 156
    .restart local v0    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    :cond_0
    iget-object v1, v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    .line 157
    .local v1, "message":Ljava/lang/Object;
    instance-of v2, v1, Lio/netty/handler/stream/ChunkedInput;

    if-eqz v2, :cond_4

    .line 158
    move-object v2, v1

    check-cast v2, Lio/netty/handler/stream/ChunkedInput;

    .line 162
    .local v2, "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    :try_start_0
    invoke-interface {v2}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v3

    .line 163
    .local v3, "endOfInput":Z
    invoke-interface {v2}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v4

    .line 164
    .local v4, "inputLength":J
    invoke-static {v2}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    nop

    .line 174
    if-nez v3, :cond_2

    .line 175
    if-nez p1, :cond_1

    .line 176
    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v6}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object p1, v6

    .line 178
    :cond_1
    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v0, v4, v5}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    .line 182
    .end local v2    # "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v3    # "endOfInput":Z
    .end local v4    # "inputLength":J
    :goto_1
    goto :goto_2

    .line 165
    .restart local v2    # "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 167
    invoke-virtual {v0, v3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 168
    sget-object v4, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    sget-object v4, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lio/netty/handler/stream/ChunkedInput;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_3
    goto :goto_0

    .line 183
    .end local v2    # "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez p1, :cond_5

    .line 184
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object p1, v2

    .line 186
    :cond_5
    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 188
    .end local v0    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .end local v1    # "message":Ljava/lang/Object;
    :goto_2
    goto :goto_0
.end method

.method private doFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 192
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 193
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/netty/handler/stream/ChunkedWriteHandler;->discard(Ljava/lang/Throwable;)V

    .line 195
    return-void

    .line 198
    :cond_0
    const/4 v1, 0x1

    .line 199
    .local v1, "requiresFlush":Z
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 200
    .local v2, "allocator":Lio/netty/buffer/ByteBufAllocator;
    :goto_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 201
    iget-object v3, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 203
    .local v3, "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    if-nez v3, :cond_1

    .line 204
    goto/16 :goto_5

    .line 207
    :cond_1
    iget-object v4, v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v4}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    iget-object v4, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 218
    goto :goto_0

    .line 221
    :cond_2
    iget-object v4, v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    .line 223
    .local v4, "pendingMessage":Ljava/lang/Object;
    instance-of v5, v4, Lio/netty/handler/stream/ChunkedInput;

    if-eqz v5, :cond_c

    .line 224
    move-object v5, v4

    check-cast v5, Lio/netty/handler/stream/ChunkedInput;

    .line 227
    .local v5, "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    const/4 v6, 0x0

    .line 229
    .local v6, "message":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v5, v2}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 230
    invoke-interface {v5}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .local v7, "endOfInput":Z
    const/4 v8, 0x1

    if-nez v6, :cond_4

    .line 234
    if-nez v7, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .local v9, "suspend":Z
    :goto_1
    goto :goto_2

    .line 236
    .end local v9    # "suspend":Z
    :cond_4
    const/4 v9, 0x0

    .line 248
    .restart local v9    # "suspend":Z
    :goto_2
    nop

    .line 250
    if-eqz v9, :cond_5

    .line 254
    goto/16 :goto_5

    .line 257
    :cond_5
    if-nez v6, :cond_6

    .line 260
    sget-object v6, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 263
    :cond_6
    if-eqz v7, :cond_7

    .line 266
    iget-object v10, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 269
    :cond_7
    invoke-interface {p1, v6}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v10

    .line 270
    .local v10, "f":Lio/netty/channel/ChannelFuture;
    if-eqz v7, :cond_9

    .line 271
    invoke-interface {v10}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 272
    invoke-static {v10, v3}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    goto :goto_3

    .line 279
    :cond_8
    new-instance v8, Lio/netty/handler/stream/ChunkedWriteHandler$2;

    invoke-direct {v8, p0, v3}, Lio/netty/handler/stream/ChunkedWriteHandler$2;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    invoke-interface {v10, v8}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_3

    .line 287
    :cond_9
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v11

    xor-int/2addr v8, v11

    .line 288
    .local v8, "resume":Z
    invoke-interface {v10}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 289
    invoke-direct {p0, v10, v3, v8}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    goto :goto_3

    .line 291
    :cond_a
    new-instance v11, Lio/netty/handler/stream/ChunkedWriteHandler$3;

    invoke-direct {v11, p0, v3, v8}, Lio/netty/handler/stream/ChunkedWriteHandler$3;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    invoke-interface {v10, v11}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 299
    .end local v8    # "resume":Z
    :goto_3
    const/4 v1, 0x0

    .line 300
    .end local v5    # "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v6    # "message":Ljava/lang/Object;
    .end local v7    # "endOfInput":Z
    .end local v9    # "suspend":Z
    .end local v10    # "f":Lio/netty/channel/ChannelFuture;
    goto :goto_4

    .line 238
    .restart local v5    # "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .restart local v6    # "message":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    .line 239
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 241
    if-eqz v6, :cond_b

    .line 242
    invoke-static {v6}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 245
    :cond_b
    invoke-static {v5}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 246
    invoke-virtual {v3, v7}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 247
    goto :goto_5

    .line 301
    .end local v5    # "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v6    # "message":Ljava/lang/Object;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_c
    iget-object v5, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 302
    iget-object v5, v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v4, v5}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 303
    const/4 v1, 0x1

    .line 306
    :goto_4
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v5

    if-nez v5, :cond_d

    .line 307
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-direct {p0, v5}, Lio/netty/handler/stream/ChunkedWriteHandler;->discard(Ljava/lang/Throwable;)V

    .line 308
    goto :goto_5

    .line 310
    .end local v3    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .end local v4    # "pendingMessage":Ljava/lang/Object;
    :cond_d
    goto/16 :goto_0

    .line 312
    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    .line 313
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 315
    :cond_f
    return-void
.end method

.method private static handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 5
    .param p0, "future"    # Lio/netty/channel/ChannelFuture;
    .param p1, "currentWrite"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 318
    iget-object v0, p1, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    .line 319
    .local v0, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 321
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v1

    .line 325
    .local v1, "inputProgress":J
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    .line 326
    .local v3, "inputLength":J
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 327
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    .line 328
    invoke-virtual {p1, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    .line 330
    .end local v1    # "inputProgress":J
    .end local v3    # "inputLength":J
    :goto_0
    return-void
.end method

.method private handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V
    .locals 5
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .param p2, "currentWrite"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .param p3, "resume"    # Z

    .line 333
    iget-object v0, p2, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    .line 334
    .local v0, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 336
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v1

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    .line 339
    if-eqz p3, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer()V

    .line 343
    :cond_1
    :goto_0
    return-void
.end method

.method private resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unexpected exception while sending chunks."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 137
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 138
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 146
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 147
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

    .line 131
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 132
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 92
    return-void
.end method

.method public resumeTransfer()V
    .locals 3

    .line 98
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 99
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/stream/ChunkedWriteHandler$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler$1;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    new-instance v1, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-direct {v1, p2, p3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;-><init>(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method
