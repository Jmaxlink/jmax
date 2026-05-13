.class public abstract Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ApplicationProtocolNegotiationHandler.java"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final fallbackProtocol:Ljava/lang/String;

.field private sslHandlerChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    nop

    .line 70
    const-class v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fallbackProtocol"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 73
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    .line 84
    const-string v0, "fallbackProtocol"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fallbackProtocol:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private fireBufferedMessages()V
    .locals 3

    .line 118
    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v1}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v2, v0}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 123
    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->clear()V

    .line 125
    :cond_1
    return-void
.end method

.method private removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 171
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 172
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 175
    :cond_0
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

    .line 166
    invoke-direct {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fireBufferedMessages()V

    .line 167
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 168
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0, p2}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-boolean v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->sslHandlerChecked:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->sslHandlerChecked:Z

    .line 106
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected abstract configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    instance-of v0, p2, Lio/netty/handler/codec/DecoderException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v1, v0

    .local v1, "wrapped":Ljava/lang/Throwable;
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    .line 201
    return-void

    .line 203
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    .line 204
    throw v0

    .line 206
    .end local v1    # "wrapped":Ljava/lang/Throwable;
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "{} Failed to select the application-level protocol:"

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 208
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 209
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

    .line 89
    iput-object p1, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 90
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 91
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

    .line 95
    invoke-direct {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fireBufferedMessages()V

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->bufferedMessages:Lio/netty/util/internal/RecyclableArrayList;

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 97
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 98
    return-void
.end method

.method protected handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "{} TLS handshake failed:"

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 193
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_4

    .line 130
    move-object v0, p2

    check-cast v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    .line 132
    .local v0, "handshakeEvent":Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/SslHandler;

    .line 134
    .local v1, "sslHandler":Lio/netty/handler/ssl/SslHandler;
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Lio/netty/handler/ssl/SslHandler;->applicationProtocol()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "protocol":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fallbackProtocol:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, v3}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot find an SslHandler in the pipeline (required for application-level protocol negotiation)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "handshakeEvent":Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "evt":Ljava/lang/Object;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v1    # "sslHandler":Lio/netty/handler/ssl/SslHandler;
    .restart local v0    # "handshakeEvent":Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "evt":Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    :goto_2
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_3

    .line 147
    :catchall_0
    move-exception v1

    .line 148
    .local v1, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v1    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    goto :goto_2

    .line 151
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->removeSelfIfPresent(Lio/netty/channel/ChannelHandlerContext;)V

    .line 154
    :cond_3
    throw v1

    .line 157
    .end local v0    # "handshakeEvent":Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
    :cond_4
    :goto_3
    instance-of v0, p2, Lio/netty/channel/socket/ChannelInputShutdownEvent;

    if-eqz v0, :cond_5

    .line 158
    invoke-direct {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fireBufferedMessages()V

    .line 161
    :cond_5
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 162
    return-void
.end method
