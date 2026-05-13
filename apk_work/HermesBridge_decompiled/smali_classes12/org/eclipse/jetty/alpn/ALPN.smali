.class public Lorg/eclipse/jetty/alpn/ALPN;
.super Ljava/lang/Object;
.source "ALPN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/alpn/ALPN$ServerProvider;,
        Lorg/eclipse/jetty/alpn/ALPN$ClientProvider;,
        Lorg/eclipse/jetty/alpn/ALPN$Provider;
    }
.end annotation


# static fields
.field public static debug:Z

.field private static objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/eclipse/jetty/alpn/ALPN$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lorg/eclipse/jetty/alpn/ALPN;->debug:Z

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static get(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 160
    sget-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/alpn/ALPN$Provider;

    return-object v0
.end method

.method public static get(Ljavax/net/ssl/SSLSocket;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    .locals 1
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 127
    sget-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/alpn/ALPN$Provider;

    return-object v0
.end method

.method public static put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/alpn/ALPN$Provider;)V
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "provider"    # Lorg/eclipse/jetty/alpn/ALPN$Provider;

    .line 151
    sget-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public static put(Ljavax/net/ssl/SSLSocket;Lorg/eclipse/jetty/alpn/ALPN$Provider;)V
    .locals 1
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "provider"    # Lorg/eclipse/jetty/alpn/ALPN$Provider;

    .line 118
    sget-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public static remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 172
    sget-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/alpn/ALPN$Provider;

    return-object v0
.end method

.method public static remove(Ljavax/net/ssl/SSLSocket;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    .locals 1
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 139
    sget-object v0, Lorg/eclipse/jetty/alpn/ALPN;->objects:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/alpn/ALPN$Provider;

    return-object v0
.end method
