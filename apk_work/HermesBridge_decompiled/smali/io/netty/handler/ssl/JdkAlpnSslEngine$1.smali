.class Lio/netty/handler/ssl/JdkAlpnSslEngine$1;
.super Ljava/lang/Object;
.source "JdkAlpnSslEngine.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/JdkAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljavax/net/ssl/SSLEngine;",
        "Lio/netty/handler/ssl/JdkAlpnSslEngine$AlpnSelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Ljavax/net/ssl/SSLEngine;

    check-cast p2, Lio/netty/handler/ssl/JdkAlpnSslEngine$AlpnSelector;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/JdkAlpnSslEngine$1;->accept(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkAlpnSslEngine$AlpnSelector;)V

    return-void
.end method

.method public accept(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkAlpnSslEngine$AlpnSelector;)V
    .locals 0
    .param p1, "e"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "s"    # Lio/netty/handler/ssl/JdkAlpnSslEngine$AlpnSelector;

    .line 108
    invoke-static {p1, p2}, Lio/netty/handler/ssl/JdkAlpnSslUtils;->setHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V

    .line 109
    return-void
.end method
