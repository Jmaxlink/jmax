.class public abstract Lio/netty/handler/ssl/AbstractSniHandler;
.super Lio/netty/handler/ssl/SslClientHelloHandler;
.source "AbstractSniHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/ssl/SslClientHelloHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final handshakeTimeoutMillis:J

.field private hostname:Ljava/lang/String;

.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 145
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/ssl/AbstractSniHandler;-><init>(IJ)V

    .line 146
    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 2
    .param p1, "maxClientHelloLength"    # I
    .param p2, "handshakeTimeoutMillis"    # J

    .line 140
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslClientHelloHandler;-><init>(I)V

    .line 141
    const-string v0, "handshakeTimeoutMillis"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->handshakeTimeoutMillis:J

    .line 142
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "handshakeTimeoutMillis"    # J

    .line 132
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/ssl/AbstractSniHandler;-><init>(IJ)V

    .line 133
    return-void
.end method

.method private checkStartTimeout(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 162
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    iget-wide v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->handshakeTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/AbstractSniHandler$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/AbstractSniHandler$1;-><init>(Lio/netty/handler/ssl/AbstractSniHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iget-wide v2, p0, Lio/netty/handler/ssl/AbstractSniHandler;->handshakeTimeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 176
    return-void

    .line 163
    :cond_1
    :goto_0
    return-void
.end method

.method private static extractSniHostname(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 13
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;

    .line 59
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 60
    .local v0, "offset":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 61
    .local v1, "endOffset":I
    add-int/lit8 v0, v0, 0x22

    .line 63
    sub-int v2, v1, v0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    .line 64
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v2

    .line 65
    .local v2, "sessionIdLength":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    .line 67
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v3

    .line 68
    .local v3, "cipherSuitesLength":I
    add-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 70
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v4

    .line 71
    .local v4, "compressionMethodLength":I
    add-int/lit8 v5, v4, 0x1

    add-int/2addr v0, v5

    .line 73
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v5

    .line 74
    .local v5, "extensionsLength":I
    add-int/lit8 v0, v0, 0x2

    .line 75
    add-int v6, v0, v5

    .line 78
    .local v6, "extensionsLimit":I
    if-gt v6, v1, :cond_4

    .line 79
    :goto_0
    sub-int v7, v6, v0

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    .line 80
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v7

    .line 81
    .local v7, "extensionType":I
    add-int/lit8 v0, v0, 0x2

    .line 83
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v8

    .line 84
    .local v8, "extensionLength":I
    add-int/lit8 v0, v0, 0x2

    .line 86
    sub-int v9, v6, v0

    if-ge v9, v8, :cond_0

    .line 87
    goto :goto_1

    .line 92
    :cond_0
    if-nez v7, :cond_3

    .line 93
    add-int/lit8 v0, v0, 0x2

    .line 94
    sub-int v9, v6, v0

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 95
    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    .line 99
    .local v9, "serverNameType":I
    add-int/lit8 v0, v0, 0x1

    .line 101
    if-nez v9, :cond_4

    .line 102
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v10

    .line 103
    .local v10, "serverNameLength":I
    add-int/lit8 v0, v0, 0x2

    .line 105
    sub-int v11, v6, v0

    if-ge v11, v10, :cond_2

    .line 106
    goto :goto_1

    .line 109
    :cond_2
    sget-object v11, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v10, v11}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "hostname":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 117
    .end local v9    # "serverNameType":I
    .end local v10    # "serverNameLength":I
    .end local v11    # "hostname":Ljava/lang/String;
    :cond_3
    add-int/2addr v0, v8

    .line 118
    .end local v7    # "extensionType":I
    .end local v8    # "extensionLength":I
    goto :goto_0

    .line 121
    .end local v2    # "sessionIdLength":I
    .end local v3    # "cipherSuitesLength":I
    .end local v4    # "compressionMethodLength":I
    .end local v5    # "extensionsLength":I
    .end local v6    # "extensionsLimit":I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 214
    .local p2, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    invoke-interface {p2}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 215
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 216
    new-instance v1, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 218
    :cond_0
    new-instance v1, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v1, p1, v0}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 220
    :goto_0
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 158
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/AbstractSniHandler;->checkStartTimeout(Lio/netty/channel/ChannelHandlerContext;)V

    .line 159
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/AbstractSniHandler;->checkStartTimeout(Lio/netty/channel/ChannelHandlerContext;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "clientHello"    # Lio/netty/buffer/ByteBuf;
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

    .line 180
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lio/netty/handler/ssl/AbstractSniHandler;->extractSniHostname(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected abstract lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
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

.method protected onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
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

    .line 187
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    .local p2, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    .line 194
    throw v0
.end method

.method protected abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
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
