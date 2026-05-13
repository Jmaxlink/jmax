.class public interface abstract Lorg/eclipse/jetty/alpn/ALPN$ServerProvider;
.super Ljava/lang/Object;
.source "ALPN.java"

# interfaces
.implements Lorg/eclipse/jetty/alpn/ALPN$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/alpn/ALPN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerProvider"
.end annotation


# virtual methods
.method public abstract select(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract unsupported()V
.end method
