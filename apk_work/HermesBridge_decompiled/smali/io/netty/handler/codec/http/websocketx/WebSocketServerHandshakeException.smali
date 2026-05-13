.class public final Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;
.super Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;
.source "WebSocketServerHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final request:Lio/netty/handler/codec/http/HttpRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "httpRequest"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 40
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpRequest;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    .line 43
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;->request:Lio/netty/handler/codec/http/HttpRequest;

    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public request()Lio/netty/handler/codec/http/HttpRequest;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakeException;->request:Lio/netty/handler/codec/http/HttpRequest;

    return-object v0
.end method
