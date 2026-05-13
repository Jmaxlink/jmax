.class public final Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;
.super Ljava/lang/Object;
.source "WebSocketServerProtocolHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandshakeComplete"
.end annotation


# instance fields
.field private final requestHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private final requestUri:Ljava/lang/String;

.field private final selectedSubprotocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUri"    # Ljava/lang/String;
    .param p2, "requestHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p3, "selectedSubprotocol"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;->requestUri:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;->requestHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 86
    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;->selectedSubprotocol:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public requestHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;->requestHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public requestUri()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;->requestUri:Ljava/lang/String;

    return-object v0
.end method

.method public selectedSubprotocol()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$HandshakeComplete;->selectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method
