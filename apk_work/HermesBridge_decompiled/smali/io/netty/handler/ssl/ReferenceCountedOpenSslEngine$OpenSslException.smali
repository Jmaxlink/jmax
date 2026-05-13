.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslException;
.super Ljavax/net/ssl/SSLException;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$NativeSslException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSslException"
.end annotation


# instance fields
.field private final errorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 2729
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 2730
    iput p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslException;->errorCode:I

    .line 2731
    return-void
.end method


# virtual methods
.method public errorCode()I
    .locals 1

    .line 2735
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslException;->errorCode:I

    return v0
.end method
