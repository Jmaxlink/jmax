.class Lio/netty/handler/ssl/AbstractSniHandler$1;
.super Ljava/lang/Object;
.source "AbstractSniHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/AbstractSniHandler;->checkStartTimeout(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/AbstractSniHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/AbstractSniHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/AbstractSniHandler;

    .line 165
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler$1;, "Lio/netty/handler/ssl/AbstractSniHandler$1;"
    iput-object p1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 168
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler$1;, "Lio/netty/handler/ssl/AbstractSniHandler$1;"
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lio/netty/handler/ssl/SslHandshakeTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    iget-wide v2, v2, Lio/netty/handler/ssl/AbstractSniHandler;->handshakeTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslHandshakeTimeoutException;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "exception":Lio/netty/handler/ssl/SslHandshakeTimeoutException;
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v2, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v2, v0}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 172
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 174
    .end local v0    # "exception":Lio/netty/handler/ssl/SslHandshakeTimeoutException;
    :cond_0
    return-void
.end method
