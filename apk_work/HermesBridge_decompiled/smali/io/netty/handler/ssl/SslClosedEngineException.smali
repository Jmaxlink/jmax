.class public final Lio/netty/handler/ssl/SslClosedEngineException;
.super Ljavax/net/ssl/SSLException;
.source "SslClosedEngineException.java"


# static fields
.field private static final serialVersionUID:J = -0x48390f3d53aa2c70L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
