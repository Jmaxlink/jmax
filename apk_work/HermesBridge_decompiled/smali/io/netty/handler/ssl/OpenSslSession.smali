.class interface abstract Lio/netty/handler/ssl/OpenSslSession;
.super Ljava/lang/Object;
.source "OpenSslSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# virtual methods
.method public abstract getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
.end method

.method public abstract handshakeFinished([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract sessionId()Lio/netty/handler/ssl/OpenSslSessionId;
.end method

.method public abstract setLocalCertificate([Ljava/security/cert/Certificate;)V
.end method

.method public abstract setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V
.end method

.method public abstract tryExpandApplicationBufferSize(I)V
.end method
