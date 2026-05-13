.class Lio/netty/handler/ssl/SslHandler$10$2;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler$10;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/ssl/SslHandler$10;

.field final synthetic val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler$10;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p1, "this$1"    # Lio/netty/handler/ssl/SslHandler$10;

    .line 2326
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$10$2;->val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2329
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Lio/netty/channel/Channel;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$10$2;->val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$10$2;->val$closeNotifyReadTimeoutFuture:Lio/netty/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 2332
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$10;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iget-object v1, v1, Lio/netty/handler/ssl/SslHandler$10;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$10$2;->this$1:Lio/netty/handler/ssl/SslHandler$10;

    iget-object v1, v1, Lio/netty/handler/ssl/SslHandler$10;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    .line 2333
    return-void
.end method
