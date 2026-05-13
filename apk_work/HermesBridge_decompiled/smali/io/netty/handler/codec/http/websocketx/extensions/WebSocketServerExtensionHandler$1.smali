.class Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;
.super Ljava/lang/Object;
.source "WebSocketServerExtensionHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->handlePotentialUpgrade(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http/HttpResponse;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$validExtensionsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;Ljava/util/List;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;

    .line 232
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->this$0:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->val$validExtensionsList:Ljava/util/List;

    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 7
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 235
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->val$validExtensionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    .line 237
    .local v1, "extension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    invoke-interface {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->newExtensionDecoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;

    move-result-object v2

    .line 238
    .local v2, "decoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
    invoke-interface {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->newExtensionEncoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;

    move-result-object v3

    .line 239
    .local v3, "encoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v5}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    .line 242
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 243
    .end local v1    # "extension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    .end local v2    # "decoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
    .end local v3    # "encoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
