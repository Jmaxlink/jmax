.class public final Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakeException;
.super Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;
.source "WebSocketClientHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final response:Lio/netty/handler/codec/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakeException;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http/HttpResponse;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "httpResponse"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 40
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpResponse;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    .line 43
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/handler/codec/http/HttpHeaders;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakeException;->response:Lio/netty/handler/codec/http/HttpResponse;

    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakeException;->response:Lio/netty/handler/codec/http/HttpResponse;

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public response()Lio/netty/handler/codec/http/HttpResponse;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakeException;->response:Lio/netty/handler/codec/http/HttpResponse;

    return-object v0
.end method
