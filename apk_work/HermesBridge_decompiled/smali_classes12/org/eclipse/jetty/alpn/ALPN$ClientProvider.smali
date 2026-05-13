.class public interface abstract Lorg/eclipse/jetty/alpn/ALPN$ClientProvider;
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
    name = "ClientProvider"
.end annotation


# virtual methods
.method public abstract protocols()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract unsupported()V
.end method
