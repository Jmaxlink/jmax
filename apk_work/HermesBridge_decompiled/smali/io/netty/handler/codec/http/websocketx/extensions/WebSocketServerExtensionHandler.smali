.class public Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "WebSocketServerExtensionHandler.java"


# instance fields
.field private final extensionHandshakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;",
            ">;"
        }
    .end annotation
.end field

.field private final validExtensions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;)V
    .locals 2
    .param p1, "extensionHandshakers"    # [Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;

    .line 69
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/Queue;

    .line 70
    const-string v0, "extensionHandshakers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 71
    return-void
.end method

.method private handlePotentialUpgrade(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http/HttpResponse;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "httpResponse"    # Lio/netty/handler/codec/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/ChannelPromise;",
            "Lio/netty/handler/codec/http/HttpResponse;",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p4, "validExtensionsList":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;>;"
    invoke-interface {p3}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 222
    .local v0, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "headerValue":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 226
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v2, "extraExtensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    .line 228
    .local v4, "extension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    invoke-interface {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->newReponseData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v4    # "extension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    goto :goto_0

    .line 230
    :cond_0
    nop

    .line 231
    invoke-static {v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->computeMergeExtensionsHeaderValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "newHeaderValue":Ljava/lang/String;
    new-instance v4, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;

    invoke-direct {v4, p0, p4, p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;-><init>(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;Ljava/util/List;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p2, v4}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 248
    if-eqz v3, :cond_1

    .line 249
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v4, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 253
    .end local v1    # "headerValue":Ljava/lang/String;
    .end local v2    # "extraExtensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    .end local v3    # "newHeaderValue":Ljava/lang/String;
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$2;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$2;-><init>(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 262
    :cond_2
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    if-eq p2, v0, :cond_2

    .line 81
    instance-of v0, p2, Lio/netty/handler/codec/http/DefaultHttpRequest;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpRequest;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->onHttpRequestChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V

    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_1

    .line 86
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->onHttpRequestChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void
.end method

.method protected onHttpRequestChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "validExtensionsList":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;>;"
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "extensionsHeader":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 130
    nop

    .line 131
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->extractExtensions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    const/4 v3, 0x0

    .line 134
    .local v3, "rsv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 135
    .local v5, "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    iget-object v6, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 136
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 137
    .local v6, "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;>;"
    const/4 v7, 0x0

    .line 139
    .local v7, "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    :goto_1
    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    nop

    .line 141
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;

    .line 142
    .local v8, "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;
    invoke-interface {v8, v5}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;->handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    move-result-object v7

    .line 143
    .end local v8    # "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;
    goto :goto_1

    .line 145
    :cond_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->rsv()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v8, :cond_2

    .line 146
    if-nez v0, :cond_1

    .line 147
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v8

    .line 149
    :cond_1
    invoke-interface {v7}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->rsv()I

    move-result v8

    or-int/2addr v3, v8

    .line 150
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v5    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .end local v6    # "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;>;"
    .end local v7    # "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    :cond_2
    goto :goto_0

    .line 156
    .end local v1    # "extensionsHeader":Ljava/lang/String;
    .end local v2    # "extensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    .end local v3    # "rsv":I
    :cond_3
    if-nez v0, :cond_4

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 159
    :cond_4
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 160
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method protected onHttpResponseWrite(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "response"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 208
    .local v0, "validExtensionsList":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;>;"
    move-object v1, p2

    .line 211
    .local v1, "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-direct {p0, p1, p3, v1, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->handlePotentialUpgrade(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http/HttpResponse;Ljava/util/List;)V

    .line 214
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 215
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    if-eq p2, v0, :cond_2

    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_2

    .line 166
    instance-of v0, p2, Lio/netty/handler/codec/http/DefaultHttpResponse;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpResponse;

    invoke-virtual {p0, p1, v0, p3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->onHttpResponseWrite(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {p0, p1, v0, p3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->onHttpResponseWrite(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 176
    :goto_0
    return-void
.end method
